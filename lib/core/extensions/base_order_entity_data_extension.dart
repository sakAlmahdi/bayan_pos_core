import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/model/order/order.dart';

extension OrderEntityDataExtension on OrderEntityData {
  // OrderC? get toOrderModle => this != null ? OrderC() : null;
  OrderC get toOrderModle => OrderC.fromJson(toJson());
}

extension ListOrderEntityDataExtension on List<OrderEntityData> {
  List<OrderC> get toOrderList => map((e) => e.toOrderModle).toList();
}

extension OrderCExtension on OrderC {
  OrderEntityData get toOrderEntityData =>
      OrderEntityData.fromJson(toJson().removeNull() as Map<String, dynamic>);
}

extension OrderHistoryEntityDataExtension on OrderHistoryEntityData {
  String? get getName =>
      BaseHelpersMethods.isPrimaryLang ? userName : userFName;
}
