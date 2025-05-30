import 'package:flutter/material.dart';
import 'package:leaderboard/utils/app_text_style.dart';

class ReusableTitleText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const ReusableTitleText(
    this.text, {
    super.key,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      text,
      style: style ?? AppTextStyle.defaultGrayTextStyle,
      maxLines: 1,
    );
  }
}
