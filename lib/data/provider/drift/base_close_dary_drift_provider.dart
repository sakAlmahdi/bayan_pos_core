import 'dart:convert';

import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/repository/base_close_day_repo.dart';
import 'package:get/get.dart';

class BaseCloseDayDriftProvider extends BaseCloseDayRepo {
  final MyDatabase db;
  BaseCloseDayDriftProvider({required this.db});

  @override
  Future<CloseDaySuamry?> closeDayReportSumary({required DateTime date}) async {
    String dateOnly = date.toString().formateDateOnly;
    CloseDaySuamry closeDaySuamry = CloseDaySuamry();
    List<String> referencese = [];
    String queryGetOpenAtAndCloseAt = """
    SELECT
    (
      SELECT JSON_OBJECT(
      'id',min(id),
      'date', clocked_in_date_at,
      'time',clocked_in_time_at
      ) FROM shift_entity
      WHERE clocked_out_date_at='$dateOnly' or  
      clocked_in_date_at ='$dateOnly'
    ) as "clockedInInfo" ,
    (
      SELECT JSON_OBJECT(
        'id',max(id),
        'date', clocked_out_date_at,
        'time',clocked_out_time_at
        )
      FROM shift_entity
      WHERE clocked_out_date_at='$dateOnly' or  
      clocked_in_date_at ='$dateOnly'
    ) as "clockedOutInfo",
    (
      SELECT json_group_array (reference)  FROM shift_entity
      WHERE clocked_out_date_at='$dateOnly' or  clocked_in_date_at ='$dateOnly'
    ) as "referencese"

    """;

    var dOepnAndClose =
        await db.customSelect(queryGetOpenAtAndCloseAt).getSingleOrNull();
    var s = dOepnAndClose?.data;
    // var jsonDOepnAndClose = json.decode(json.encode(s));
    var clockedInInfo = json.decode(s?['clockedInInfo']);
    var clockedOutInfo = json.decode(s?['clockedOutInfo']);

    // print(j);
    // set
    closeDaySuamry.openAt =
        "${clockedInInfo["date"] ?? ''} ${clockedInInfo["time"] ?? ''}";
    closeDaySuamry.closeAt =
        "${clockedOutInfo["date"] ?? ''} ${clockedOutInfo["time"] ?? ''}";
    referencese = (json.decode(s?['referencese']) as List)
        .map((e) => e.toString())
        .toList();

    var queryPaments = """ 
      SELECT sum(amount - remain_amt ) as total ,f_name ,  currency_code , amount_curecny , remain_amt , t2.name ,payment_mehtod_id ,
      t2.f_name
      FROM order_payments RIGHT JOIN payment_method_entity as t2 on payment_mehtod_id=t2.id
      WHERE payment_mehtod_id Is NOT NULL AND till_id  
      IN ( SELECT till_id FROm till_entity  WHERE shift_id in (${referencese.join(',')})   )
      GROUP By payment_mehtod_id , currency_code 
      """;

    var dQueryPayments = await db.customSelect(queryPaments).get();

    var paymentsMethodInfo = dQueryPayments
        .map(
          (e) => PaymentsMethodInfo.fromJson(e.data),
        )
        .toList();

    closeDaySuamry.paymentsMethodInfo = paymentsMethodInfo;

    /// query totoal by status
    ///
    var queryTotalByStatus = """
    select t1.till_id, t1.payment_mehtod_id ,t1.amount , t2.order_ref ,
    t2.status as status , sum( t1.amount -  t1.remain_amt ) as total , sum (t1.remain_amt) as remainTotal
    FROM order_payments as t1 
    LEFT JOIN  order_entity as t2 ON t1.till_id=t2.till_id
    WHERE t1.till_id in( select reference FROm till_entity where shift_id in(${referencese.join(',')})  )
    GROUP BY t2.status
    """;

    var dQueryByStatus = await db.customSelect(queryTotalByStatus).get();

    closeDaySuamry.payments = Payments();

    closeDaySuamry.payments!.totalPay = dQueryByStatus
        .firstWhereOrNull((element) => element.data['status'] == 6)
        ?.data['total'];
    closeDaySuamry.payments!.totalReturn = dQueryByStatus
        .firstWhereOrNull((element) => element.data['status'] == 3)
        ?.data['total'];

    var queryTotoalDiscountByStatus = """
       select sum(total_discount_for_order_and_product) as total , status
       FROM order_entity where status in(3,6) and shift_id in (${referencese.join(',')})
       GROUP By status
    """;

    var dQueryTotoalDiscountByStatus =
        await db.customSelect(queryTotoalDiscountByStatus).get();

    closeDaySuamry.payments!.totalDiscountReturn = dQueryTotoalDiscountByStatus
        .firstWhereOrNull((element) => element.data['status'] == 3)
        ?.data['total'];

    var itemsTotalDiscount = dQueryTotoalDiscountByStatus
            .firstWhereOrNull((element) => element.data['status'] == 6)
            ?.data['total'] ??
        0.0;
    closeDaySuamry.payments!.totalDiscount = (itemsTotalDiscount) +
        closeDaySuamry.payments!.totalDiscountReturn.getZeroIfNull;

    closeDaySuamry.payments!.netReturen =
        closeDaySuamry.payments!.totalDiscount.getZeroIfNull -
            closeDaySuamry.payments!.totalDiscountReturn.getZeroIfNull;

    closeDaySuamry.payments!.netPayment =
        closeDaySuamry.payments!.totalPay.getZeroIfNull -
            closeDaySuamry.payments!.totalReturn.getZeroIfNull;
    //TODO:// total cahDrops
    closeDaySuamry.payments!.totalCashDrops = 0;

    List<TillSumary>? tillsSumary =
        await BaseOrderDriftProvider(db: db).tillSumary(date: date);
    closeDaySuamry.tillsSumary = tillsSumary;

    return closeDaySuamry;
  }
}
