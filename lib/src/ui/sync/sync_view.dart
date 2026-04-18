import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bayan_pos_core/data/controllers/base_sync_controller.dart';
import 'package:bayan_pos_core/data/enum/sync_enums.dart';
// Modular Widgets from widgets directory
import 'widgets/sync_pipeline_painter.dart';
import 'widgets/sync_details_dialog.dart';
import 'widgets/sync_components.dart';
import 'widgets/sync_settings_dialog.dart';

class SyncView extends StatefulWidget {
  const SyncView({Key? key}) : super(key: key);

  @override
  State<SyncView> createState() => _SyncViewState();

  static void showAsDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        insetPadding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: const SizedBox(
            width: 800,
            height: 800,
            child: SyncView(),
          ),
        ),
      ),
    );
  }
}

class _SyncViewState extends State<SyncView>
    with SingleTickerProviderStateMixin {
  final BaseSyncController controller = Get.find<BaseSyncController>();
  late AnimationController _flowController;

  @override
  void initState() {
    super.initState();
    _flowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();
  }

  @override
  void dispose() {
    _flowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            const Divider(height: 1),
            Expanded(child: _buildScrollableContent()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "المزامنة",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),
          _buildActionButton(),
        ],
      ),
    );
  }

  Widget _buildActionButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF64748B).withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () => controller.startFullSync(),
        icon: const Icon(Icons.refresh_rounded, color: Color(0xFF475569)),
        tooltip: "مزامنة الكل",
      ),
    );
  }

  Widget _buildScrollableContent() {
    return RefreshIndicator(
      onRefresh: () async => controller.startFullSync(),
      color: const Color(0xFF2563EB),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIntegratedSyncHub(),
            const SizedBox(height: 32),
            _buildCategoriesGrid(),
            const SizedBox(height: 24),
            _buildSettingsButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    return Column(
      children: [
        Obx(() => _buildSyncSection(
              "طلبات المبيعات",
              Icons.receipt_long_rounded,
              count: controller.entityCounts['order_v2_entity'] ?? 0,
              entities: ['order_v2_entity'],
            )),
        Obx(() {
          final count = (controller.entityCounts['shift_entity'] ?? 0) +
              (controller.entityCounts['till_entity'] ?? 0) +
              (controller.entityCounts['drawer_operation_entity'] ?? 0);
          return _buildSyncSection(
            "العمليات المالية",
            Icons.account_balance_wallet_rounded,
            count: count,
            entities: [
              'shift_entity',
              'till_entity',
              'drawer_operation_entity'
            ],
          );
        }),
        Obx(() => _buildSyncSection(
              "المخزون",
              Icons.inventory_2_rounded,
              count: controller.entityCounts['product_qty_entity'] ?? 0,
              entities: ['product_qty_entity'],
            )),
      ],
    );
  }

  Widget _buildIntegratedSyncHub() {
    return Obx(() {
      final role = controller.deviceRole.value;
      final isSyncing = controller.syncStatus.value == SyncStatus.syncing;
      final pendingCount = controller.pendingCount.value;

      String sourceName = role == DeviceRole.server
          ? "سيرفر المحلي"
          : (role == DeviceRole.client ? "كاشير فرعي" : "هذا الجهاز");
      String destName = role == DeviceRole.client ? "سيرفر المحلي" : "السحابة";

      final bool destOnline = role == DeviceRole.client
          ? controller.isLocalServerOnline.value
          : controller.isCloudOnline.value;

      final bgGradient = !destOnline
          ? const LinearGradient(colors: [Color(0xFFEF4444), Color(0xFFB91C1C)])
          : (isSyncing
              ? const LinearGradient(
                  colors: [Color(0xFF2563EB), Color(0xFF3B82F6)])
              : (pendingCount > 0
                  ? const LinearGradient(
                      colors: [Color(0xFFEA580C), Color(0xFFF97316)])
                  : const LinearGradient(
                      colors: [Color(0xFF10B981), Color(0xFF059669)])));

      _updateFlowDuration(isSyncing);

      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 30,
                offset: const Offset(0, 10)),
          ],
        ),
        child: Column(
          children: [
            _buildHubHeader(
                bgGradient, isSyncing, destOnline, pendingCount, destName),
            _buildPipelineDisplay(sourceName, destName, role, destOnline,
                isSyncing, pendingCount),
            if (isSyncing) _buildSyncProgressBar(bgGradient.colors.first),
          ],
        ),
      );
    });
  }

  void _updateFlowDuration(bool isSyncing) {
    int targetMs = isSyncing ? 1200 : 3500;
    if (_flowController.duration!.inMilliseconds != targetMs) {
      _flowController.duration = Duration(milliseconds: targetMs);
      _flowController.repeat();
    }
  }

  Widget _buildHubHeader(Gradient gradient, bool isSyncing, bool isOnline,
      int pending, String destName) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: Row(
        children: [
          _buildStatusIcon(isSyncing, pending),
          const SizedBox(width: 16),
          Expanded(
              child: _buildStatusText(isSyncing, isOnline, pending, destName)),
          if (pending > 0) _buildLargeCounter(pending),
          if (isSyncing) const SyncLoadingIndicator(),
        ],
      ),
    );
  }

  Widget _buildStatusIcon(bool isSyncing, int pending) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
      child: Icon(
        isSyncing
            ? Icons.sync_rounded
            : (pending > 0
                ? Icons.sync_problem_rounded
                : Icons.verified_rounded),
        color: Colors.white,
        size: 25,
      ),
    );
  }

  Widget _buildStatusText(
      bool isSyncing, bool isOnline, int pending, String destName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isSyncing
              ? "جاري المزامنة..."
              : (!isOnline
                  ? "حالة الاتصال"
                  : (pending > 0 ? "تنبيه المزامنة" : "حالة النظام")),
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 11,
              fontWeight: FontWeight.bold),
        ),
        Text(
          isSyncing
              ? "يتم نقل بياناتك بأمان إلى $destName"
              : (!isOnline
                  ? "انقطع الاتصال مع $destName حالياً"
                  : (pending > 0
                      ? "يوجد تعديلات بانتظار الرفع"
                      : "ممتاز! كافة البيانات تمت مزامنتها")),
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _buildLargeCounter(int count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("$count",
            style: const TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.w900,
                height: 1)),
        Text("غير متزامن",
            style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 10,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildPipelineDisplay(String source, String dest, DeviceRole role,
      bool isOnline, bool isSyncing, int pending) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Row(
        children: [
          PipelineNode(
              name: source, isSource: true, role: role, isOnline: true),
          Expanded(
            child: PipelineConnection(
              controller: _flowController,
              isOnline: isOnline,
              isSyncing: isSyncing,
              hasPending: pending > 0,
            ),
          ),
          PipelineNode(
              name: dest, isSource: false, role: role, isOnline: isOnline),
        ],
      ),
    );
  }

  Widget _buildSyncProgressBar(Color color) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: LinearProgressIndicator(
          value: controller.progress.value,
          minHeight: 6,
          backgroundColor: const Color(0xFFF1F5F9),
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
      ),
    );
  }

  Widget _buildSyncSection(String title, IconData icon,
      {int count = 0, required List<String> entities}) {
    final bool hasPending = count > 0;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _openDetails(title, entities),
          borderRadius: BorderRadius.circular(20),
          child: Ink(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: hasPending
                      ? const Color(0xFFFED7AA)
                      : const Color(0xFFF1F5F9)),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF64748B).withOpacity(0.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4))
              ],
            ),
            child: Row(
              children: [
                SectionIcon(icon: icon, hasPending: hasPending),
                const SizedBox(width: 20),
                Expanded(
                    child: SectionLabel(
                        title: title, count: count, hasPending: hasPending)),
                Icon(
                  hasPending
                      ? Icons.arrow_forward_ios_rounded
                      : Icons.check_circle_rounded,
                  size: hasPending ? 16 : 22,
                  color: hasPending
                      ? const Color(0xFF94A3B8)
                      : const Color(0xFF10B981),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openDetails(String title, List<String> entities) {
    controller.fetchDetails(entities);
    Get.dialog(SyncDetailsDialog(
        title: title, entities: entities, controller: controller));
  }

  Widget _buildSettingsButton() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFF1F5F9))),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.dialog(const SyncSettingsDialog()),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings_suggest_rounded, color: Colors.blue[600]),
                const SizedBox(width: 12),
                const Text("إعدادات المزامنة المتقدمة",
                    style: TextStyle(
                        color: Color(0xFF334155), fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
