import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bayan_pos_core/data/controllers/base_sync_controller.dart';

class SyncSettingsDialog extends StatelessWidget {
  const SyncSettingsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BaseSyncController>();

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 32),
            _buildSettingSection(
              title: "المزامنة التلقائية",
              subtitle: "مزامنة البيانات تلقائياً في الخلفية",
              trailing: Obx(() => Switch.adaptive(
                    value: controller.autoSyncEnabled.value,
                    activeColor: const Color(0xFF10B981),
                    onChanged: (v) => controller.updateSettings(autoEnabled: v),
                  )),
            ),
            const Divider(height: 48),
            _buildIntervalSetting(controller),
            // const Divider(height: 48),
            // _buildServerSetting(controller),
            const Divider(height: 48),
            _buildSettingSection(
              title: "إعادة المحاولة التلقائية",
              subtitle: "إعادة المحاولة عند فشل الاتصال",
              trailing: Obx(() => Switch.adaptive(
                    value: controller.retryOnFailure.value,
                    activeColor: const Color(0xFF2563EB),
                    onChanged: (v) => controller.updateSettings(retry: v),
                  )),
            ),
            const SizedBox(height: 40),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFEFF6FF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.settings_suggest_rounded,
              color: Color(0xFF2563EB)),
        ),
        const SizedBox(width: 16),
        const Text(
          "إعدادات المزامنة",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.close_rounded),
        ),
      ],
    );
  }

  Widget _buildSettingSection(
      {required String title,
      required String subtitle,
      required Widget trailing}) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E293B),
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF64748B),
                ),
              ),
            ],
          ),
        ),
        trailing,
      ],
    );
  }

  Widget _buildIntervalSetting(BaseSyncController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "دورة المزامنة",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            Obx(() => Text(
                  "${controller.syncIntervalSeconds.value} ثانية",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2563EB),
                  ),
                )),
          ],
        ),
        Obx(() => Slider(
              value: controller.syncIntervalSeconds.value.toDouble(),
              min: 30,
              max: 600,
              divisions: 19,
              activeColor: const Color(0xFF2563EB),
              onChanged: controller.autoSyncEnabled.value
                  ? (v) => controller.updateSettings(interval: v.toInt())
                  : null,
            )),
      ],
    );
  }

  Widget _buildServerSetting(BaseSyncController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "عنوان السيرفر (اختياري)",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          onChanged: (v) => controller.updateSettings(url: v),
          decoration: InputDecoration(
            hintText: "http://192.168.1.100:5000",
            filled: true,
            fillColor: const Color(0xFFF8FAFC),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Get.back(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 0,
        ),
        child: const Text("حفظ الإعدادات"),
      ),
    );
  }
}
