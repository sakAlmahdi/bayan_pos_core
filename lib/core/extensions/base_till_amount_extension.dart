import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/model/order/till_value.dart';

extension TillAmountEntityExtension on TillAmountsEntityData {
  TillValue get toTillAmountModle => TillValue.fromJson(toJson());
}

extension TillAmountEntityDataExtension on List<TillAmountsEntityData>? {
  List<TillValue> get toTillAmountList =>
      this?.map((e) => e.toTillAmountModle).toList() ?? [];
}

extension TillAmountExtension on TillValue {
  TillEntityData get toTillEntityData =>
      TillEntityData.fromJson(toJson().removeNull() as Map<String, dynamic>);
}
