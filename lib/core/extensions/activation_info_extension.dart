import 'package:bayan_pos_core/bayan_pos_core.dart';

extension ActivationInfoDataExtension on ActivationInfoEntityData {
  ActivationInfo get toModel => ActivationInfo.fromJson(toJson());
}

extension ListActivationInfoEntityDataExtension
    on List<ActivationInfoEntityData> {
  List<ActivationInfo> get toListModel => map((e) => e.toModel).toList();
}

extension ActivationInfoExtension on ActivationInfo {
  ActivationInfoEntityData get toEntityData =>
      ActivationInfoEntityData.fromJson(
          toJson().removeNull() as Map<String, dynamic>);
}
