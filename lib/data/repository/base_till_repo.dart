import 'package:bayan_pos_core/data/model/order/till_value.dart';
import 'package:bayan_pos_core/data/model/till/till.dart';

abstract class BaseTillRepo {
  Future<Till?> hasTill(
    String userId,
  );
  Future<Till?> openTill({
    required String shiftId,
    String? userId,
    String? userName,
    String? note,
    required double amount,
  });
  Future<Till?> closeTill(
    String userId,
    List<TillValue> tillAmounts, {
    String? note,
  });
  Future<List<Till>?> tillUserHistory(String? userId,
      {Map<String, dynamic> filter});
  Future<List<Till>?> gitTillsByDate(
    DateTime dateTime, {
    Map<String, dynamic> filter,
  });
  Future<List<Till>?> getAllTillOpened();
  Stream<List<Till>?> getTillsStream(String? userId,
      {Map<String, dynamic>? filter});
}
