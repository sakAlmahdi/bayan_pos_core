import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/core/extensions/base_shift_entity_extension.dart';
import 'package:bayan_pos_core/data/repository/base_shift_repo.dart';
import 'package:drift/drift.dart';

class BaseShiftDriftProvider extends BaseShiftRepo {
  final MyDatabase db;
  BaseShiftDriftProvider({required this.db});
  @override
  Future<Shift?> closeShift(String userId) async {
    Shift? shift = await hasShift(userId);
    if (shift == null) {
      throw 'لا يوجد حضور لهذا المستخدم';
    }
    shift = shift.copyWith(
      clockedOutDateAt: DateTime.now().toString().formateDateOnly,
      clockedOutTimeAt: DateTime.now().toString().formateTimeOnly,
      isClockedOut: true,
    );
    var d = shift.toShiftEntityData;

    int id = await db.into(db.shiftEntity).insert(
          d,
          mode: InsertMode.insertOrReplace,
        );
    // int id = await db.into(db.shiftEntity).insertOnConflictUpdate(d);

    return shift.copyWith(id: id);
  }

  @override
  Future<Shift?> hasShift(String? userId) async {
    if (userId == null) return null;
    var query = db.select(db.shiftEntity);

    query.where(
        (tbl) => tbl.userId.equals(userId) & tbl.isClockedOut.equals(false));

    var shifts = (await query.get()).map((e) => e.toShiftModle).toList();
    return shifts.isNotEmpty
        ? shifts.first.copyWith(
            isExist: true,
          )
        : null;
  }

  @override
  Future<Shift?> openShift(
      {String? userId, String? userName, String? branchName}) async {
    try {
      Shift? shift = await hasShift(userId);

      if (shift != null) {
        return shift;
      }
      shift = Shift(
        reference: BaseHelpersMethods.createRefId(),
        userId: userId,
        branchName: branchName,
        clockedInDateAt: DateTime.now().toString().formateDateOnly,
        clockedInTimeAt: DateTime.now().toString().formateTimeOnly,
        userName: userName,
        isClockedOut: false,
      );
      int id = await db.into(db.shiftEntity).insert(
            shift.toShiftEntityData,
            mode: InsertMode.insertOrReplace,
          );
      return shift.copyWith(id: id);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Shift>?> getShifts({Map<String, dynamic>? filter}) async {
    var query = db.select(db.shiftEntity);
    if (filter?['isClockedOut'] != null) {
      query.where((tbl) => tbl.isClockedOut.equals(filter?['isClockedOut']));
    }
    return (await query.get()).toShiftList;
  }

  @override
  Future<int?> clockOutShifts({required List<String> ids}) async {
    try {
      var query = db.update(db.shiftEntity);
      query.where((tbl) => tbl.reference.isIn(ids));
      int rowsFected = await query.write(ShiftEntityCompanion(
        clockedOutDateAt: Value(DateTime.now().toString().formateDateOnly),
        clockedOutTimeAt: Value(DateTime.now().toString().formateTimeOnly),
        isClockedOut: const Value(true),
      ));
      return rowsFected;
    } catch (e) {
      return -1;
    }
  }
}
