import 'package:flutter/material.dart';
import 'package:trigger/utils/colors.dart';

class TriangleWidget extends CustomPainter {
  final bool? success;

  TriangleWidget({this.success});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = success != null
          ? success == true
              ? AppColors.widget2
              : AppColors.widget1
          : AppColors.widget1
      ..style = success != null
          ? success == true
              ? PaintingStyle.fill
              : PaintingStyle.stroke
          : PaintingStyle.stroke
      ..strokeWidth = 3;

    final Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
