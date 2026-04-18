import 'package:flutter/material.dart';
import 'package:bayan_pos_core/data/enum/sync_enums.dart';
import 'sync_pipeline_painter.dart';


class PulseWrapper extends StatefulWidget {
  final Widget child;
  final bool isActive;
  const PulseWrapper({Key? key, required this.child, required this.isActive})
      : super(key: key);

  @override
  State<PulseWrapper> createState() => _PulseWrapperState();
}

class _PulseWrapperState extends State<PulseWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 1.0, end: 1.03).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    if (widget.isActive) _controller.repeat(reverse: true);
  }

  @override
  void didUpdateWidget(covariant PulseWrapper oldWidget) {
    if (widget.isActive && !oldWidget.isActive) {
      _controller.repeat(reverse: true);
    } else if (!widget.isActive && oldWidget.isActive) {
      _controller.stop();
      _controller.animateTo(1.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: _animation, child: widget.child);
  }
}

class PipelineNode extends StatelessWidget {
  final String name;
  final bool isSource;
  final DeviceRole role;
  final bool isOnline;

  const PipelineNode({
    Key? key,
    required this.name,
    required this.isSource,
    required this.role,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statusColor =
        isOnline ? const Color(0xFF10B981) : const Color(0xFFEF4444);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: statusColor.withOpacity(0.08),
              blurRadius: 20,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          PulseWrapper(
            isActive: isOnline,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  statusColor.withOpacity(0.15),
                  statusColor.withOpacity(0.05)
                ]),
                shape: BoxShape.circle,
                border: Border.all(color: statusColor.withOpacity(0.1)),
              ),
              child: Icon(
                isSource
                    ? (role == DeviceRole.client
                        ? Icons.devices_rounded
                        : Icons.hub_rounded)
                    : (name == "السحابة"
                        ? Icons.cloud_done_rounded
                        : Icons.hub_rounded),
                color: statusColor,
                size: 25,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF0F172A),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration:
                        BoxDecoration(color: statusColor, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    isOnline ? "نشط" : "غير متصل",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: statusColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionIcon extends StatelessWidget {
  final IconData icon;
  final bool hasPending;
  const SectionIcon({Key? key, required this.icon, required this.hasPending})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: hasPending ? const Color(0xFFFFF7ED) : const Color(0xFFEFF6FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        color: hasPending ? const Color(0xFFEA580C) : const Color(0xFF2563EB),
        size: 26,
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  final String title;
  final int count;
  final bool hasPending;
  const SectionLabel({
    Key? key,
    required this.title,
    required this.count,
    required this.hasPending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1E293B),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          hasPending ? "$count عملية معلقة" : "لا توجد تعديلات جديدة",
          style: TextStyle(
            color:
                hasPending ? const Color(0xFF9A3412) : const Color(0xFF64748B),
            fontSize: 13,
            fontWeight: hasPending ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class SyncLoadingIndicator extends StatelessWidget {
  const SyncLoadingIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
    );
  }
}

class PipelineConnection extends StatelessWidget {
  final AnimationController controller;
  final bool isOnline;
  final bool isSyncing;
  final bool hasPending;

  const PipelineConnection({
    Key? key,
    required this.controller,
    required this.isOnline,
    required this.isSyncing,
    required this.hasPending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: AnimatedBuilder(
              animation: controller,
              builder: (context, _) => CustomPaint(
                painter: RailwayPipelinePainter(
                  progress: controller.value,
                  isOnline: isOnline,
                  isSyncing: isSyncing,
                ),
              ),
            ),
          ),
          if (hasPending) _buildPendingBadge(),
        ],
      ),
    );
  }

  Widget _buildPendingBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        gradient: isSyncing
            ? const LinearGradient(colors: [Color(0xFF2563EB), Color(0xFF3B82F6)])
            : const LinearGradient(
                colors: [Color(0xFFEA580C), Color(0xFFF97316)]),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4)),
        ],
      ),
      child: const Text(
        " بانتظار الرفع",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w900, color: Colors.white),
      ),
    );
  }
}
