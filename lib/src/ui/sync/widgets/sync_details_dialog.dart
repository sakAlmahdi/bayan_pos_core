import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bayan_pos_core/data/controllers/base_sync_controller.dart';

class SyncDetailsDialog extends StatelessWidget {
  final String title;
  final List<String> entities;
  final BaseSyncController controller;

  const SyncDetailsDialog({
    Key? key,
    required this.title,
    required this.entities,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        width: 800,
        height: 800,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 30,
              offset: const Offset(0, 15),
            ),
          ],
        ),
        child: Column(
          children: [
            _buildDialogHeader(),
            _buildSearchBar(),
            Expanded(child: _buildDetailsList()),
            _buildDialogFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildDialogHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.1)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: Color(0xFF0F172A),
            ),
          ),
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.close_rounded, color: Colors.black, size: 28),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: (v) => controller.searchQuery.value = v,
        decoration: InputDecoration(
          hintText: "بحث برقم الفاتورة أو المرجع...",
          prefixIcon: const Icon(Icons.search_rounded, size: 20),
          filled: true,
          fillColor: const Color(0xFFF8FAFC),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          hintStyle: const TextStyle(fontSize: 13, color: Color(0xFF94A3B8)),
        ),
      ),
    );
  }

  Widget _buildDetailsList() {
    return Obx(() {
      if (controller.isFetchingDetails.value) {
        return const Center(child: CircularProgressIndicator());
      }
      final details = controller.filteredDetails;
      if (details.isEmpty) return _buildEmptyState();

      return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: details.length,
        separatorBuilder: (_, __) =>
            const Divider(height: 1, color: Color(0xFFF1F5F9)),
        itemBuilder: (context, index) => _buildListItem(details[index]),
      );
    });
  }

  Widget _buildEmptyState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.search_off_rounded, size: 64, color: Colors.grey[200]),
        const SizedBox(height: 16),
        const Text("لا توجد سجلات مطابقة", style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildListItem(dynamic item) {
    final data = item.data;
    String displayTitle = "ID: ${item.entityId}";
    String? amount;

    if (item.entity.contains('order')) {
      displayTitle = data['invoiceNumber'] ?? data['orderRef'] ?? displayTitle;
      if (data['finalAmount'] != null) amount = "${data['finalAmount']} R.S";
    }

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      title: Text(
        displayTitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFF1E293B),
        ),
      ),
      subtitle: Text(
        "تاريخ: ${item.createdAt.toString().split('.')[0]}",
        style: const TextStyle(fontSize: 11),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (amount != null)
            Text(
              amount,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF10B981),
              ),
            ),
          IconButton(
            onPressed: () => controller.syncIndividualItem(item, entities),
            icon: const Icon(Icons.sync_rounded,
                size: 20, color: Color(0xFF2563EB)),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogFooter() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Obx(() {
        final count = (controller.entityCounts.entries
            .where((e) => entities.contains(e.key))
            .fold(0, (sum, e) => sum + e.value));

        if (count == 0) return const SizedBox.shrink();

        return SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => controller.syncCategory(entities),
            icon: const Icon(Icons.flash_on_rounded, size: 18),
            label: Text("مزامنة كافة الـ $title الآن ($count)"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F172A),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 0,
            ),
          ),
        );
      }),
    );
  }
}
