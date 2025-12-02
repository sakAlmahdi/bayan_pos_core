import 'package:bayan_pos_core/core/extensions/activation_info_extension.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/model/device/activation_info.dart';
import 'package:drift/drift.dart';
import 'package:objectbox/objectbox.dart';

class ActivationObjbox {
  late MyDatabase db;
  ActivationObjbox({required this.db});

  Future<ActivationInfo?> getActivationInfo() async {
    var data =
        (await db.select(db.activationInfoEntity).getSingleOrNull())?.toModel;
    return data;
  }

  Future<bool> saveActivationInfo(ActivationInfo activationInfo) async {
    try {
      await db.delete(db.activationInfoEntity).go();
      // box.removeAll();

      var d = activationInfo.toEntityData;

      await db.into(db.activationInfoEntity).insert(
            activationInfo.toEntityData,
            mode: InsertMode.insertOrReplace,
          );
      // box.put(activationInfo);
      return true;
    } catch (e) {
      return false;
    }
  }

  removeActivationInfo() async {
    await db.delete(db.activationInfoEntity).go();
  }
}
