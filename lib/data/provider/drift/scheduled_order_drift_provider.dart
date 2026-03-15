import 'package:bayan_pos_core/data/entity/order_v2_entity.dart';
import 'package:bayan_pos_core/data/enum/order_satate.dart';
import 'package:bayan_pos_core/data/enum/scheduled_order_status.dart';
import 'package:drift/drift.dart';

/// Provider لإدارة الطلبات المجدولة في قاعدة البيانات
class ScheduledOrderDriftProvider {
  final GeneratedDatabase db;

  ScheduledOrderDriftProvider({required this.db});

  /// حفظ طلب مجدول
  Future<void> saveScheduledOrder({
    required String orderRef,
    required DateTime scheduledFor,
    required String scheduledBy,
    String? notes,
  }) async {
    await db.customStatement(
      '''
      UPDATE order_entity_v2 
      SET 
        is_scheduled = ?,
        scheduled_for = ?,
        scheduled_by = ?,
        scheduled_at = ?,
        scheduled_status = ?,
        scheduled_notes = ?,
        status = ?
      WHERE order_ref = ?
      ''',
      [
        1, // true
        scheduledFor.millisecondsSinceEpoch ~/ 1000,
        scheduledBy,
        DateTime.now().millisecondsSinceEpoch ~/ 1000,
        ScheduledOrderStatus.pending.value,
        notes,
        OrderStatusC.scheduled.toKey(),
        orderRef,
      ],
    );
  }

  /// الحصول على جميع الطلبات المجدولة
  Future<List<dynamic>> getAllScheduledOrders() async {
    final table = db.allTables.firstWhere(
      (t) => t.actualTableName == 'order_entity_v2',
    );

    final query = db.select(table)
      ..where((tbl) {
        final o = tbl as OrderEntityV2;
        return o.isScheduled.equals(true);
      })
      ..orderBy([
        (tbl) => OrderingTerm(expression: (tbl as OrderEntityV2).scheduledFor)
      ]);

    return await query.get();
  }

  /// الحصول على الطلبات المجدولة لفترة محددة
  Future<List<dynamic>> getScheduledOrdersForPeriod({
    required DateTime start,
    required DateTime end,
  }) async {
    final table = db.allTables.firstWhere(
      (t) => t.actualTableName == 'order_entity_v2',
    );

    final query = db.select(table)
      ..where((tbl) {
        final o = tbl as OrderEntityV2;
        return o.isScheduled.equals(true) &
            o.scheduledFor.isBiggerOrEqualValue(start) &
            o.scheduledFor.isSmallerOrEqualValue(end);
      })
      ..orderBy([
        (tbl) => OrderingTerm(expression: (tbl as OrderEntityV2).scheduledFor)
      ]);

    return await query.get();
  }

  /// الحصول على الطلبات الجاهزة للتفعيل
  Future<List<dynamic>> getReadyToActivateOrders() async {
    final now = DateTime.now();
    final table = db.allTables.firstWhere(
      (t) => t.actualTableName == 'order_entity_v2',
    );

    final query = db.select(table)
      ..where((tbl) {
        final o = tbl as OrderEntityV2;
        return o.isScheduled.equals(true) &
            o.scheduledStatus.equals(ScheduledOrderStatus.pending.value) &
            o.scheduledFor.isSmallerOrEqualValue(now);
      })
      ..orderBy([
        (tbl) => OrderingTerm(expression: (tbl as OrderEntityV2).scheduledFor)
      ]);

    return await query.get();
  }

  /// تفعيل طلب مجدول
  Future<void> activateScheduledOrder({
    required String orderRef,
    required String activatedBy,
  }) async {
    await db.customStatement(
      '''
      UPDATE order_entity_v2 
      SET 
        is_scheduled = ?,
        scheduled_status = ?,
        activated_at = ?,
        activated_by = ?,
        status = ?
      WHERE order_ref = ?
      ''',
      [
        0, // false
        ScheduledOrderStatus.activated.value,
        DateTime.now().millisecondsSinceEpoch ~/ 1000,
        activatedBy,
        OrderStatusC.active.toKey(),
        orderRef,
      ],
    );
  }

  /// إلغاء جدولة طلب
  Future<void> cancelScheduledOrder({
    required String orderRef,
    String? reason,
  }) async {
    await db.customStatement(
      '''
      UPDATE order_entity_v2 
      SET 
        scheduled_status = ?,
        scheduled_notes = ?
      WHERE order_ref = ?
      ''',
      [
        ScheduledOrderStatus.cancelled.value,
        reason,
        orderRef,
      ],
    );
  }

  /// تحديث موعد الجدولة
  Future<void> updateScheduledTime({
    required String orderRef,
    required DateTime newScheduledFor,
  }) async {
    await db.customStatement(
      '''
      UPDATE order_entity_v2 
      SET scheduled_for = ?
      WHERE order_ref = ?
      ''',
      [
        newScheduledFor.millisecondsSinceEpoch ~/ 1000,
        orderRef,
      ],
    );
  }

  /// تحديث حالة الطلب المجدول
  Future<void> updateScheduledStatus({
    required String orderRef,
    required ScheduledOrderStatus status,
  }) async {
    await db.customStatement(
      '''
      UPDATE order_entity_v2 
      SET scheduled_status = ?
      WHERE order_ref = ?
      ''',
      [
        status.value,
        orderRef,
      ],
    );
  }

  /// الحصول على عدد الطلبات المجدولة لليوم
  Future<int> getScheduledOrdersCountForToday() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(Duration(days: 1));

    final orders = await getScheduledOrdersForPeriod(
      start: startOfDay,
      end: endOfDay,
    );

    return orders.length;
  }

  /// الحصول على الطلبات المجدولة المتأخرة
  Future<List<dynamic>> getOverdueScheduledOrders() async {
    final now = DateTime.now();
    final table = db.allTables.firstWhere(
      (t) => t.actualTableName == 'order_entity_v2',
    );

    final query = db.select(table)
      ..where((tbl) {
        final o = tbl as OrderEntityV2;
        return o.isScheduled.equals(true) &
            o.scheduledStatus.equals(ScheduledOrderStatus.pending.value) &
            o.scheduledFor.isSmallerThanValue(now.subtract(Duration(hours: 1)));
      })
      ..orderBy([
        (tbl) => OrderingTerm(expression: (tbl as OrderEntityV2).scheduledFor)
      ]);

    return await query.get();
  }
}
