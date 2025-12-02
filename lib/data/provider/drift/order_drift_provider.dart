// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';
import 'package:bayan_pos_core/core/extensions/base_date_time_extension.dart';
import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:bayan_pos_core/core/extensions/base_order_entity_data_extension.dart';
import 'package:bayan_pos_core/core/extensions/base_string_extension.dart';
import 'package:bayan_pos_core/core/extensions/drift_database_ex.dart';
import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/controllers/activation_controller.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/enum/drawer_opertion_enum.dart';
import 'package:bayan_pos_core/data/enum/order_satate.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/device/device.dart';
import 'package:bayan_pos_core/data/model/order/order.dart';
import 'package:bayan_pos_core/data/model/order_dashbord/order_statistics.dart';
import 'package:bayan_pos_core/data/model/report/currency_total_pay.dart';
import 'package:bayan_pos_core/data/model/report/drawer_report_info.dart';
import 'package:bayan_pos_core/data/model/report/order_sumary.dart';
import 'package:bayan_pos_core/data/model/report/till_sumary.dart';
import 'package:bayan_pos_core/data/model/till/till.dart';
import 'package:bayan_pos_core/data/model/user/user.dart';
import 'package:bayan_pos_core/data/repository/order_repo.dart';
import 'package:drift/drift.dart';
import 'package:get/get.dart';

class BaseOrderDriftProvider extends OrderRepo {
  late MyDatabase db;
  BaseOrderDriftProvider({required this.db});

  @override
  Stream<List<OrderC>?> getAllOrderStream({
    String? serach,
    Map<String, dynamic>? filtter,
  }) {
    throw UnimplementedError();
  }

  @override
  saveOrder({required OrderC order}) async {
    try {
      int? id;
      await db.transaction(() async {
        try {
          order.masterChecksum = order.checksum;
          var dd = order.toJsonOrder();
          OrderEntityData data = order.toOrderEntityData;

          id = await db.into(db.orderEntity).insertWithSyncQueue(
                data,
                mode: InsertMode.insertOrReplace,
                data: dd,
                db: db,
                entityId: order.orderRef,
                table: db.orderEntity,
              );
          print("id : $id");

          if (order.payments.isNotEmpty) {
            var qd = db.delete(db.orderPayments);
            qd.where((tbl) => tbl.orderRef.equals(order.orderRef));
            await qd.go();
          }

          for (var i = 0; i < order.payments.length; i++) {
            var dataPay = OrderPayment(
              refreance: order.payments[i].refreance,
              orderId: order.invoiceNumber,
              orderRef: order.orderRef,
              paymentMehtodId: order.payments[i].method.target?.id ?? '',
              tillId: order.tillId ?? '',
              amount: order.payments[i].amt,
              remainAmt: order.payments[i].remainAmt,
              amountCurecny: order.payments[i].amountCurecny ?? 0,
              currencyCode: order.payments[i].currencyCode,
              exchangeRate: order.payments[i].exchangeRate,
            );
            await db.into(db.orderPayments).insertWithSyncQueue(
                  dataPay,
                  mode: InsertMode.insertOrReplace,
                  data: dataPay.toJson(),
                  db: db,
                  entityId: dataPay.refreance,
                  table: db.orderPayments,
                );
          }
        } catch (e) {
          ///TODO : mast
          print("object");
          rethrow;
        }
      });

      return (id ?? -2) > -1;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<OrderC>?> getAllOrder({
    String? serach,
    Map<String, dynamic>? filtter,
  }) async {
    var query = db.select(db.orderEntity);

    if (filtter?['inStatus'] != null) {
      query.where((tbl) => tbl.status.isIn(filtter?['inStatus']));
    }
    if (filtter?['st'] != null && filtter?['st'] != 'all') {
      query.where((tbl) => tbl.status.equals(filtter?['st']));
    }
    if (filtter?['status'] != null) {
      if (filtter?['status'] is List<int>) {
        query.where((tbl) => tbl.status.isIn(filtter?['status']));
      } else {
        query.where((tbl) => tbl.status.equals(filtter?['status']));
      }
    }
    if (filtter?['orderSource'] != null) {
      query.where((tbl) => tbl.orderSource.equals(filtter?['orderSource']));
    }
    if (filtter?['cashier'] != null) {
      for (var element in (filtter?['cashier'] as List)) {
        query.where((tbl) => tbl.creatorBy.contains(element.toString()));
      }
    }
    if (filtter?['showComaingOrder'] != null) {
      query.where((tbl) => tbl.timeOfReceipt.isNotNull());
    }
    if (filtter?['workDate'] != null) {
      DateTime date = DateTime.parse(filtter!['workDate']);
      query.where(
        (tbl) => tbl.startDate.isBetweenValues(
          date.toStartTimeWithDate,
          date.toEndTimeWithDate,
        ),
      );
    }
    query.orderBy([
      (t) => OrderingTerm(expression: t.startDate, mode: OrderingMode.desc),
    ]);
    if (filtter?['numRows'] != null && filtter?['page'] != null) {
      query.limit(filtter!['numRows'],
          offset: filtter['page'] * filtter['numRows']);
    }

    return (await query.get()).toOrderList;
  }

  @override
  saveHistory(
      {required OrderC order,
      required String sesstionId,
      required User user}) async {
    // String? orderHash = HelpersMethods.createChecksum(order: order);
    String orderHash = BaseHelpersMethods.createRefId();
    OrderHistoryEntityData orderHistoryEntity = OrderHistoryEntityData(
      orderRef: order.orderRef,
      sesstionId: sesstionId,
      userId: user.idUser ?? '',
      userFName: user.fullName,
      userName: user.fullName,
      lastEditDate: DateTime.now(),
      order: order.toJsonOrder(),
      checkSumHash: orderHash,
    );

    int id = await db.into(db.orderHistoryEntity).insertWithSyncQueue(
          orderHistoryEntity,
          mode: InsertMode.insertOrReplace,
          data: orderHistoryEntity.toJson(),
          db: db,
          entityId: orderHistoryEntity.orderRef,
          table: db.orderHistoryEntity,
        );
    print("id : $id");
  }

  @override
  Future<List<OrderC>?> getAllOrderForMearge(
      {required String curentOrderRef,
      String? serach,
      Map<String, dynamic>? filtter}) async {
    var query = db.select(db.orderEntity);
    query.where((tbl) =>
        tbl.status.equals(OrderStatusC.active.toKey()) &
        (tbl.orderRef.isNotValue(curentOrderRef)) &
        tbl.orderType.equals(OrderType.dineIn.toKey()));
    query.orderBy([
      (t) => OrderingTerm(expression: t.startDate, mode: OrderingMode.desc),
    ]);

    return (await query.get()).toOrderList;
  }

  @override
  Future<List<OrderHistoryEntityData>?> getOrderHistory(
      {required String curentOrderRef,
      String? serach,
      Map<String, dynamic>? filtter}) async {
    var query = db.select(db.orderHistoryEntity);
    query.where((tbl) => (tbl.orderRef.equals(curentOrderRef)));

    List<OrderHistoryEntityData> data = await query.get();
    return data;
  }

  @override
  Future<String?> createOrderInvoiceNumber({required OrderC order}) async {
    Device? curentDevice = Get.find<ActivationController>().currentDevice;
    if (curentDevice == null) throw 'لم يتم اكتشاف الجهاز الحالي';
    var query = db.select(db.orderNumbers);
    query.where((tbl) => tbl.orderRef.equals(order.orderRef));
    OrderNumber? orderInfo = await query.getSingleOrNull();
    String? orderNumber = orderInfo?.idSeq.toString();
    if (orderInfo == null) {
      int id = await db.into(db.orderNumbers).insert(
            OrderNumber(
              orderRef: order.orderRef,
              invoiceNumberPerfix: curentDevice.invoiceNumberPrefix ?? '0',
              prefix: curentDevice.invoiceNumberPrefixSymbol,
            ),
          );
      orderNumber = id.toString();
    }
    // return "${curentDevice.invoiceNumberPrefix ?? ''}${(curentDevice.invoiceNumberPrefix ?? 0) + int.parse(orderNumber ?? '0')}";
    return "${curentDevice.invoiceNumberPrefix ?? ''}${int.parse(orderNumber ?? '0')}";
  }

  @override
  Future<OrderC?> getDraftOrder() async {
    var query = db.select(db.orderEntity);
    query.where((tbl) => tbl.status.equals(OrderStatusC.draft.toKey()));
    var data = await query.get();
    if (data.isNotEmpty) {
      return data.first.toOrderModle;
    }
    return null;
  }

  @override
  saveOrderSync({required List<String> ordersRefs}) async {
    if (ordersRefs.isEmpty) return;
    String query =
        "SELECT * FROM order_entity WHERE order_ref IN (${ordersRefs.join(',')})";
    var data = await db.customSelect(query).get();
    var d = data.map((e) => e.data).toList();
    log("orders not sync : ${json.encode(d)}");
    List<OrderEntityData> ordersEntityData =
        d.map((e) => db.orderEntity.map(e)).toList();

    for (OrderEntityData order in ordersEntityData) {
      int idUdaated = await db.customUpdate(
          "UPDATE order_entity SET master_checksum = '${order.checksum}' WHERE order_ref = '${order.orderRef}'");

      print("idUpdated :  $idUdaated");
    }
  }

  @override
  Future<List<OrderC>?> getNotSyncOrders({int? bualkNumber}) async {
    try {
      var data = await db.customSelect(
        """ 
        SELECT * From order_entity WHERE  checksum <> master_checksum or master_checksum is NULL ${bualkNumber != null ? " LIMIT $bualkNumber" : ""} 
        
        """,
        readsFrom: {db.orderEntity},
      ).get();
      var d = data.map((e) => e.data).toList();
      log("orders not sync : ${json.encode(d)}");
      List<OrderEntityData> ordersEntityData =
          d.map((e) => db.orderEntity.map(e)).toList();

      return ordersEntityData.toOrderList;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<int> countNotSyncOrders() async {
    try {
      var data = await db.customSelect(
        """ 
        SELECT count(*) as 'count' From order_entity WHERE  checksum <> master_checksum or master_checksum is NULL 
        
        """,
        readsFrom: {db.orderEntity},
      ).get();
      return data.firstOrNull?.data['count'] ?? 0;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  deleteDoneOrdersAndDoneSync() async {
    var query =
        "delete From order_entity WHERE  checksum == master_checksum AND status not in (${[
      OrderStatusC.draft.toKey(),
      OrderStatusC.active.toKey(),
    ].join(',')})";
    await db.customUpdate(query);
  }

  // @override
  // Future<bool?> lockOrder({required OrderC order}) async {
  //   try {
  //     order.status = OrderStatusC.draft.toKey();
  //     await saveOrder(order: order);
  //     return true;
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  @override
  Future<List<OrderC>?> getOrdersSplited({required String orderRef}) async {
    var query = db.select(db.orderEntity);
    query.where((tbl) =>
        tbl.orderRef.equals(orderRef) | tbl.parentOrderId.equals(orderRef));
    var data = await query.get();
    var orders = data.toOrderList;
    return orders.length > 1 ? orders : null;
  }

  Future<OrderSumary> orderSumary({
    required DateTime date,
  }) async {
    try {
      var query = db.customSelect("""
      SELECT
      order_type,
      DATE(start_date,'unixepoch') as date,
      COUNT(*) AS count,
      SUM(number_vistor) AS guest,
      SUM(sub_total) AS sub_total,
      SUM(total_charge) AS totalCharges,
      SUM(price_discount + price_promotion) AS totalDiscount,
      SUM(tax_price) AS totalTax,
      SUM((sub_total + total_charge + tax_price) - price_discount - price_promotion) AS total,
      AVG((sub_total + total_charge + tax_price) - price_discount - price_promotion) AS avgPerOrder,
      (
        SELECT AVG((sub_total + total_charge + tax_price) - price_discount - price_promotion) AS avgPerGuest
        FROM order_entity
        WHERE number_vistor IS NOT NULL AND DATE(start_date,'unixepoch') ='${date.toString().formateDateOnly}'
      ) AS avg,
      (
        SELECT JSON_OBJECT(
          'grossSalesWithOutTax', SUM((sub_total + total_charge + tax_price) - price_discount - price_promotion),
          'grossSalesCount', COUNT(*),
          'netSalesTotal', SUM((sub_total + total_charge + tax_price) - price_discount - price_promotion),
          'netSalesCount', COUNT(*)
        )
        FROM order_entity
        WHERE tax_price <= 0 AND DATE(start_date,'unixepoch') ='${date.toString().formateDateOnly}'
      ) AS grossSalesWithOutTaxInfo,
      (
        SELECT JSON_OBJECT(
          'totalDiscount', SUM(price_discount + price_promotion),
          'count', COUNT(*),
          'start_date',start_date
        )
        FROM order_entity  WHERE (price_discount !=0 Or price_promotion!=0)  AND  DATE(start_date,'unixepoch') ='${date.toString().formateDateOnly}'
      ) AS discountInfo
      FROM order_entity  WHERE date ='${date.toString().formateDateOnly}';

""");

      var data = await query.get();
      OrderSumary orderSumary = OrderSumary.fromJson(data.first.data);
      log(data.first.data.toString());
      return orderSumary;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<TillSumary>?> tillSumary({
    required DateTime date,
  }) async {
    //TODO : TIll sumary
    // var tills = await TillSocket().gitTillsByDate(date);
    List<Till> tills = [];
    List<TillSumary> tillsSumary = [];
    for (var i = 0; i < (tills?.length ?? 0); i++) {
      // var query = db.customSelect("""
      //   select  t1.till_id , t1.payment_mehtod_id ,sum (t1.amount) as total ,
      //   t2.name , t2.f_name
      //   from order_payments as t1
      //   LEFT JOIN payment_method_entity as t2 On t2.id = t1.payment_mehtod_id
      //   LEFT JOIN till_entity as t3 on t3.reference=t1.till_id
      //   WHERE till_id = '${tills?[i].reference}'
      //   GROUP by till_id , payment_mehtod_id

      // """);
      // var query = db.customSelect("""
      //  SELECT  t1.id , t1.name , t1.f_name , t2.till_id , t2.payment_mehtod_id,
      //  sum (t2.amount) as total FROM payment_method_entity as t1
      //  LEFT JOIN order_payments as t2 On t1.id= t2.payment_mehtod_id
      //  WHERE t2.till_id='${tills?[i].reference}' or (t2.till_id ISNULL AND amount ISNULL )
      //  GROUP BY t2.payment_mehtod_id

      // """);
      var query = db.customSelect("""
      SELECT   t2.name , t2.f_name, t1.till_id ,sum(t1.amount - t1.remain_amt) as total FROM order_payments as t1 
      RIGHT JOIN payment_method_entity as t2 on t1.payment_mehtod_id = t2.id
      WHERE till_id='${tills?[i].reference}' or (t1.till_id ISNULL AND amount ISNULL )
      GROUP By t2.id 

      """);
      var data = await query.get();

      var queryTillPayments = db.customSelect("""
      select t1.till_id, t1.payment_mehtod_id ,t1.amount , t2.order_ref ,
      t2.status as status , sum( t1.amount -  t1.remain_amt ) as total , sum (t1.remain_amt) as remainTotal
      FROM order_payments as t1 
      LEFT JOIN  order_entity as t2 ON t1.till_id=t1.till_id
      WHERE t1.till_id='${tills?[i].reference}'
      GROUP BY t2.status
""");
      var queryTotalPayment = db.customSelect("""
         SELECT sum( amount -  remain_amt ) as total From order_payments WHERE 
         order_ref in ( SELECT order_ref FROM order_entity WHERE status =${OrderStatusC.done.toKey()} AND  till_id = '${tills?[i].reference}' ) 
""");
      var queryTotalRetrunPayment = db.customSelect("""
         SELECT sum( amount -  remain_amt ) as total From order_payments WHERE 
         order_ref in ( SELECT order_ref FROM order_entity WHERE status =${OrderStatusC.returned.toKey()} AND  till_id = '${tills?[i].reference}' ) 
""");

      var dataQueryTillPayments = await queryTillPayments.get();
      var dataQueryTotalPayment = await queryTotalPayment.get();
      var dataQueryTotalRetrunPayment = await queryTotalRetrunPayment.get();

      QueryRow? paymentsTotal = dataQueryTotalPayment.firstOrNull;
      QueryRow? returenTotal = dataQueryTotalRetrunPayment.firstOrNull;

      var queryCurrenicesPayments = db.customSelect("""
      SELECT t2.order_ref, t1.till_id ,sum(t1.amount_curecny) as total , 
      t1.currency_code , t2.status
      FROM order_payments as t1 
      LEFT JOIN order_entity as t2  on t1.order_ref = t2.order_ref
      WHERE t1.till_id='${tills?[i].reference}' or (t1.till_id ISNULL AND amount ISNULL )
      GROUP By t2.order_ref , t1.currency_code
      """);

      var dataQueryCurrenicesPayments = await queryCurrenicesPayments.get();
      List<CurrencyTotalPay>? currenciesTotalPays = dataQueryCurrenicesPayments
          .map((p0) => CurrencyTotalPay.fromJson(p0.data))
          .toList();

      /// Get Drawer Opertion

      var queryDrawer = db.select(db.drawerOperationEntity);
      queryDrawer.where((tbl) => tbl.tillId.equals(tills![i].reference!));
      List<DrawerOperationEntityData> drawerOperation = await queryDrawer.get();
      var totalCashDrop = drawerOperation.where(
          (element) => element.type == DrawerOpertionEnum.moveCash.toKey());
      var totalPayIn = drawerOperation
          .where((element) => element.type == DrawerOpertionEnum.add.toKey());
      var totalPayOut = drawerOperation.where(
          (element) => element.type == DrawerOpertionEnum.withdraw.toKey());

      DrawerReportInfo drawerReportInfo = DrawerReportInfo(
        countOpenDrawers: drawerOperation
            .where((element) =>
                element.type == DrawerOpertionEnum.openDrawer.toKey())
            .toList()
            .length,
        totalCashDrop: totalCashDrop.isEmpty
            ? 0
            : totalCashDrop
                .map((e) => e.amount.getZeroIfNull)
                .reduce((value, element) => value + element),
        totalPayIn: totalPayIn.isEmpty
            ? 0
            : totalPayIn
                .map((e) => e.amount ?? 0)
                .reduce((value, element) => value + element),
        totalPayOut: totalPayOut.isEmpty
            ? 0
            : totalPayOut
                .map((e) => e.amount ?? 0)
                .reduce((value, element) => value + element),
      );

      tillsSumary.add(
        TillSumary(
          sumary: data.map((e) => SumaryInfoData.fromJson(e.data)).toList(),
          drawerReportInfo: drawerReportInfo.copyWith(
            totalPaymentOperation: paymentsTotal?.data['total'],
            totalReturnOperation: returenTotal?.data['total'],
          ),
          curreniesTotat: currenciesTotalPays,
          till: tills?[i],
        ),
      );
    }

    return tillsSumary;
  }

  @override
  Future<List<OrderC>?> getAllOrderForTable(
      {String? serach, Map<String, dynamic>? filtter}) async {
    var query = db.select(db.orderEntity);
    query.where((tbl) =>
        tbl.tableId.isNotNull() &
        tbl.status
            .isIn([OrderStatusC.active.toKey(), OrderStatusC.draft.toKey()]));
    query.orderBy([
      (t) => OrderingTerm(expression: t.startDate, mode: OrderingMode.desc),
    ]);

    return (await query.get()).toOrderList;
  }

  @override
  Future<OrderC?> getOrdersByTillId({String? tillId}) {
    // TODO: implement getOrdersByTillId
    throw UnimplementedError();
  }

  @override
  Future<OrdersStatistics> getOrdersStatistics() {
    // TODO: implement getOrdersStatistics
    throw UnimplementedError();
  }

  @override
  Future<OrderC?> lockOrderOnMaster({String? orderRef}) async {
    try {
      if (orderRef == null) throw 'orderRef is Null ';
      var query = db.select(db.orderEntity);
      query.where((tbl) => tbl.orderRef.equals(orderRef));
      OrderEntityData? orderEntityData = await query.getSingleOrNull();
      if (orderEntityData == null) throw 'Order Not Found To Lock ';
      OrderC order = orderEntityData.toOrderModle;

      // if(ord)
      order.status = OrderStatusC.draft.toKey();

      await saveOrder(order: order);
      return order;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<bool?> lockOrderOnLocal({required OrderC order}) async {
    try {
      order.status = OrderStatusC.draft.toKey();
      await saveOrder(order: order);
      return true;
    } catch (e) {
      throw e.toString();
    }
  }
}

// class TillSumary {
//   Till? till;
//   List<SumaryInfoData>? sumary;
//   DrawerReportInfo? drawerReportInfo;
//   List<CurrencyTotalPay>? curreniesTotat = [];

//   TillSumary({
//     this.till,
//     this.sumary,
//     this.drawerReportInfo,
//     this.curreniesTotat,
//   });

//   TillSumary.fromJson(Map<String, dynamic> json) {
//     till = Till.fromJson(json['till']);
//     drawerReportInfo = DrawerReportInfo.fromJson(json['drawerReportInfo']);
//     if (json['sumary'] != null) {
//       sumary = SumaryInfoData.fromList(json['sumary']);
//     }
//     if (json['curreniesTotat'] != null) {
//       curreniesTotat = CurrencyTotalPay.fromList(json['curreniesTotat']);
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};

//     data['till'] = till;
//     data['drawerReportInfo'] = drawerReportInfo?.toJson();
//     data['sumary'] = sumary?.map((e) => e.toJson()).toList();
//     data['curreniesTotat'] = curreniesTotat?.map((e) => e.toJson()).toList();
//     return data;
//   }
// }

// class SumaryInfoData {
//   String? tillId;
//   String? paymentMehtodId;
//   double? total;
//   String? name;
//   String? fName;

//   SumaryInfoData(
//       {this.tillId, this.paymentMehtodId, this.total, this.name, this.fName});

//   SumaryInfoData.fromJson(Map<String, dynamic> json) {
//     tillId = json['till_id'];
//     paymentMehtodId = json['payment_mehtod_id'];
//     total = json['total'];
//     name = json['name'];
//     fName = json['f_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     data['till_id'] = tillId;
//     data['payment_mehtod_id'] = paymentMehtodId;
//     data['total'] = total;
//     data['name'] = name;
//     data['f_name'] = fName;
//     return data;
//   }

//   static List<SumaryInfoData> fromList(List<dynamic> data) =>
//       data.map((e) => SumaryInfoData.fromJson(e)).toList();
// }
