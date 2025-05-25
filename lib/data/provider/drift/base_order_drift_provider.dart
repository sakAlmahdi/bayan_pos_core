import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/controllers/activation_controller.dart';
// import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:drift/drift.dart';
import 'package:bayan_pos_core/core/extensions/base_payment_method_extension.dart';
import 'package:get/get.dart';

import 'base_till_drift_provider.dart';

class BaseOrderDriftProvider extends OrderRepo {
  final MyDatabase db;
  BaseOrderDriftProvider({required this.db});

  @override
  Stream<List<OrderC>?> getAllOrderStream({
    String? serach,
    Map<String, dynamic>? filtter,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<bool?> saveOrder({required OrderC order}) async {
    try {
      int? id;
      await db.transaction(() async {
        try {
          order.masterChecksum = order.checksum;
          OrderEntityData data = order.toOrderEntityData;

          id = await db
              .into(db.orderEntity)
              .insert(data, mode: InsertMode.insertOrReplace);

          for (var i = 0; i < order.payments.length; i++) {
            if (order.payments[i].method.target != null) {
              await db.into(db.paymentMethodEntity).insert(
                    order.payments[i].method.target!.toEntityData,
                    mode: InsertMode.insertOrReplace,
                  );
            }

            await db.into(db.orderPayments).insert(
                OrderPayment(
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
                ),
                mode: InsertMode.insertOrReplace);
          }
        } catch (e) {
          print("object");
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

    if (filtter?['st'] != null && filtter?['st'] != 'all') {
      query.where((tbl) => tbl.status.equals(filtter?['st']));
    }
    if (filtter?['status'] != null) {
      query.where((tbl) => tbl.status.equals(filtter?['status']));
    }
    if (filtter?['orderSource'] != null) {
      query.where((tbl) => tbl.orderSource.equals(filtter?['orderSource']));
    }
    if (filtter?['cashier'] != null) {
      if (filtter?['cashier'] is String) {
        List<String> ids = filtter!['cashier'].toString().split(',');
        for (var element in (ids)) {
          query.where((tbl) => tbl.creatorBy.contains(element.toString()));
        }
      } else {
        for (var element in (filtter?['cashier'] as List)) {
          query.where((tbl) => tbl.creatorBy.contains(element.toString()));
        }
      }
    }

    if (filtter?['showComaingOrder'] != null) {
      query.where((tbl) => tbl.timeOfReceipt.isNotNull());
    }
    // if (filtter?['workDate'] != null) {
    //   query.where((tbl) => tbl.startDate.);
    // }

    query.orderBy([
      (t) => OrderingTerm(expression: t.startDate, mode: OrderingMode.desc),
    ]);
    if (filtter?['numRows'] != null && filtter?['page'] != null) {
      query.limit(filtter!['numRows'],
          offset: filtter['page'] * filtter['numRows']);
    }
    // int page = 1;
    // int numRows = 10;
    // int offset = numRows * page;
    // query.limit(numRows, offset: offset);
    return (await query.get()).toOrderList;
  }

  @override
  Future<List<OrderC>?> getAllOrderForMearge(
      {required String curentOrderRef,
      String? serach,
      Map<String, dynamic>? filtter}) async {
    var query = db.select(db.orderEntity);
    query.where((tbl) =>
        tbl.status.equals(OrderStatusC.active.toKey()) &
        (tbl.orderRef.isNotValue(curentOrderRef)));
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
  Future<OrdersStatistics> getOrdersStatistics() async {
    var data = await db.select(db.orderEntity).get();
    return OrdersStatistics(
      numberOrders: data.length,
      numberOrdersActive: data
          .where((element) => element.status == OrderStatusC.active.toKey())
          .length,
      numberOrdersDone: data
          .where((element) => element.status == OrderStatusC.done.toKey())
          .length,
      numberOrdersCansel: data
          .where((element) => element.status == OrderStatusC.declined.toKey())
          .length,
      numberOrdersRetruen: data
          .where((element) => element.status == OrderStatusC.returned.toKey())
          .length,
      numberOrdersDraft: data
          .where((element) => element.status == OrderStatusC.draft.toKey())
          .length,
    );
  }

  @override
  Future<OrderC?> lockOrder({String? orderRef}) async {
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
  Future<OrderC?> getOrdersByTillId({String? tillId}) {
    // TODO: implement getOrdersByTillId
    throw UnimplementedError();
  }

  getOrderPaymentsInfo() async {
    var query = db.customSelect("""
       select t1.till_id, t1.payment_mehtod_id ,t1.amount , t2.order_ref ,
       t2.status , sum( t1.amount ) as total , sum (t1.remain_amt) as remainTotal
       FROM order_payments as t1 
       LEFT JOIN  order_entity as t2 ON t1.till_id=t1.till_id
       WHERE t1.till_id='23101014323652'
       GROUP BY t2.status

      """);
    var data = await query.get();
  }

  Future<List<TillSumary>?> tillSumary({
    required DateTime date,
  }) async {
    var tills = await BaseTillDriftProvider(db).gitTillsByDate(date);
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
