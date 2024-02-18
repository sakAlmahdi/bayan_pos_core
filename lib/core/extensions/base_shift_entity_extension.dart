import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/model/shift.dart';

extension ShiftEntityExtension on ShiftEntityData {
  Shift get toShiftModle => Shift.fromJson(toJson());
}

extension ListShiftEntityDataExtension on List<ShiftEntityData> {
  List<Shift> get toShiftList => map((e) => e.toShiftModle).toList();
}

extension ShiftExtension on Shift {
  ShiftEntityData get toShiftEntityData =>
      ShiftEntityData.fromJson(toJson().removeNull() as Map<String, dynamic>);
}
