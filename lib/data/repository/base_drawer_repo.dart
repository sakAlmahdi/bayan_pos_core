import 'package:bayan_pos_core/data/model/drawer/drawer_operation.dart';
import 'package:bayan_pos_core/data/model/setting/reasons_drawer_open.dart';

abstract class BaseDrawerRepo {
  Future<List<DrawerOperation>?> getAllDrawerOperations();
  Future<List<ReasonsDrawerOpen>?> getAllDrawerResponse();
  Future<bool?> addOperation(DrawerOperation operation);
  Future<String> getDrawerOperationsCount();
}
