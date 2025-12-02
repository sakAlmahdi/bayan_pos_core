import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/provider/drift/base_order_drift_provider.dart';
import 'package:bayan_pos_core/data/provider/drift/base_till_drift_provider.dart';
import 'package:bayan_pos_core/data/repository/base_report_repo.dart';
import 'package:bayan_pos_core/data/repository/base_till_repo.dart';

class ReportDriftProvider extends BaseReportRepo {
  final MyDatabase db;
  ReportDriftProvider({required this.db});
  BaseTillRepo get tillRepo => BaseTillDriftProvider(db);
  BaseOrderDriftProvider get orderRepo => BaseOrderDriftProvider(db: db);
  @override
  tillSummary({required String userId, required DateTime date}) {
    tillRepo.tillUserHistory(userId, filter: {"dateFrom": date});
    // orderRepo.getOrdersByTillId()
  }
}
