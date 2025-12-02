import 'package:bayan_pos_core/bayan_pos_core.dart';

abstract class BaseCloseDayRepo {
  Future<CloseDaySuamry?> closeDayReportSumary({required DateTime date});
}
