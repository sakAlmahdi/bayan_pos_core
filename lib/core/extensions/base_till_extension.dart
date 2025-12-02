import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/model/till/till.dart';

extension TillEntityExtension on TillEntityData {
  Till get toTillModle => Till.fromJson(toJson());
}

extension ListTillEntityDataExtension on List<TillEntityData> {
  List<Till> get toTillList => map((e) => e.toTillModle).toList();
}

extension TillExtension on Till {
  TillEntityData get toTillEntityData =>
      TillEntityData.fromJson(toJson().removeNull() as Map<String, dynamic>);
}
