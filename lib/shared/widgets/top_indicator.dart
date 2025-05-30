import 'package:flutter/material.dart';
import 'package:leaderboard/utils/color_util.dart';

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = ColorUtil.primaryColor
      ..isAntiAlias = true;

    // Define the height of the indicator, corner radius, and width reduction
    double indicatorHeight = 3;
    double cornerRadius = 3;
    double widthReduction = 16; // Amount to reduce the width

    // Create the reduced-width rectangle using Rect.fromLTWH
    double adjustedWidth = cfg.size!.width - widthReduction;
    Rect rect = Rect.fromLTWH(
      offset.dx + widthReduction / 2, // Center the reduced rectangle
      offset.dy, // Y-coordinate (aligned with the top of the canvas)
      adjustedWidth, // Reduced width of the tab
      indicatorHeight, // Height of the indicator
    );

    // Create a rounded rectangle with bottom corners rounded
    RRect roundedRect = RRect.fromRectAndCorners(
      rect,
      bottomLeft: Radius.circular(cornerRadius), // Rounded bottom-left corner
      bottomRight: Radius.circular(cornerRadius), // Rounded bottom-right corner
    );

    // Draw the rounded rectangle
    canvas.drawRRect(roundedRect, paint);
  }
}
