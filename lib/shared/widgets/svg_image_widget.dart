import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageWidget extends StatelessWidget {
  final String? imageName;
  final double height;
  final double width;
  final BoxFit fit;
  final Color? color;
  final BorderRadius? borderRadius;

  const SvgImageWidget({
    super.key,
    required this.imageName,
    this.height = 50.0,
    this.width = 50.0,
    this.fit = BoxFit.contain,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(8.0),
      ),
      child: SvgPicture.asset(
        'assets/svg/$imageName.svg',
        fit: fit,
      ),
    );
  }
}
