import 'package:bayan_pos_core/bayan_pos_core.dart';

abstract class BaseShiftRepo {
  Future<Shift?> hasShift(
    String userId,
  );
  Future<Shift?> openShift(
      {String? userId, String? userName, String? branchName});
  Future<Shift?> closeShift(String userId);

  Future<List<Shift>?> getShifts({Map<String, dynamic>? filter});
  Future<int?> clockOutShifts({required List<String> ids});
}
