import 'package:flutter/material.dart';

class RailwayPipelinePainter extends CustomPainter {
  final double progress;
  final bool isOnline;
  final bool isSyncing;

  RailwayPipelinePainter({
    required this.progress,
    required this.isOnline,
    required this.isSyncing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final start = Offset(0, size.height / 2);
    final end = Offset(size.width, size.height / 2);

    if (!isOnline) {
      _drawBrokenPipeline(canvas, size);
      return;
    }

    // 1. Path Depth
    canvas.drawLine(
      start,
      end,
      Paint()
        ..color = const Color(0xFFF1F5F9)
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 6.0,
    );

    // 2. Neon Core effect
    canvas.drawLine(
      start,
      end,
      Paint()
        ..color = (isSyncing ? const Color(0xFF10B981) : const Color(0xFFE2E8F0))
            .withOpacity(isSyncing ? 0.3 : 0.1)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.5
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
    );

    // 3. Central Wire
    canvas.drawLine(
      start,
      end,
      Paint()
        ..color = Colors.white
        ..strokeWidth = 1.0
        ..style = PaintingStyle.stroke,
    );

    if (isSyncing) _drawBeams(canvas, size);
  }

  void _drawBrokenPipeline(Canvas canvas, Size size) {
    final dashedPaint = Paint()
      ..color = const Color(0xFFEF4444).withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    double dashWidth = 8, dashSpace = 6, currentX = 0;
    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, size.height / 2),
        Offset(currentX + dashWidth, size.height / 2),
        dashedPaint,
      );
      currentX += dashWidth + dashSpace;
    }

    final center = Offset(size.width / 2, size.height / 2);
    final xSize = 8.0;
    final xPaint = Paint()
      ..color = const Color(0xFFEF4444)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      center + Offset(-xSize, -xSize),
      center + Offset(xSize, xSize),
      xPaint,
    );
    canvas.drawLine(
      center + Offset(xSize, -xSize),
      center + Offset(-xSize, xSize),
      xPaint,
    );
  }

  void _drawBeams(Canvas canvas, Size size) {
    const int beamCount = 6;
    const double spacing = 1.0 / beamCount;
    for (int i = 0; i < beamCount; i++) {
      final double p = (progress + (i * spacing)) % 1.0;
      final double x = size.width * (1.0 - p);
      final double y = size.height / 2;
      final Color beamColor =
          (p > 0.4 && p < 0.6) ? const Color(0xFF3B82F6) : const Color(0xFF10B981);

      canvas.drawRect(
        Rect.fromCenter(center: Offset(x, y), width: 22, height: 10),
        Paint()
          ..color = beamColor.withOpacity(0.15)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
      );
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(center: Offset(x, y), width: 12, height: 4),
          const Radius.circular(2),
        ),
        Paint()
          ..color = beamColor
          ..style = PaintingStyle.fill,
      );
    }
  }

  @override
  bool shouldRepaint(covariant RailwayPipelinePainter oldDelegate) =>
      oldDelegate.progress != progress ||
      oldDelegate.isOnline != isOnline ||
      oldDelegate.isSyncing != isSyncing;
}
