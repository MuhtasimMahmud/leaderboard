
import 'package:flutter/material.dart';

import 'app_sizes.dart';
import 'color_util.dart';

class AppTextStyle {
  static TextStyle get defaultGrayTextStyle => const TextStyle(
      fontWeight: FontWeight.normal,
      color: ColorUtil.darkGrayColor,
      fontSize: AppFontSizes.defaultTextSize);

  static TextStyle get defaultBlackTextStyle => const TextStyle(
      fontWeight: FontWeight.normal,
      color: ColorUtil.textFieldTextColor,
      fontSize: AppFontSizes.defaultTextSize);

  static TextStyle get smallBlackTextStyle =>  TextStyle(
      fontWeight: FontWeight.normal,
      color: ColorUtil.textFieldTextColor,
      fontSize: AppFontSizes.smallTextSize);

  static TextStyle get defaultGrayBoldTextStyle => const TextStyle(
      fontWeight: FontWeight.bold,
      color: ColorUtil.darkGrayColor,
      fontSize: AppFontSizes.defaultTextSize);

  static TextStyle get defaultBlackBoldTextStyle => const TextStyle(
      fontWeight: FontWeight.bold,
      color: ColorUtil.textFieldTextColor,
      fontSize: AppFontSizes.largeTextSize);

  static TextStyle get tableHeaderBoldTextStyle =>  TextStyle(
      fontWeight: FontWeight.bold,
      color: ColorUtil.whiteColor,
      fontSize: AppFontSizes.smallTextSize);

  static TextStyle get tableRowTextStyle => const TextStyle(
      fontWeight: FontWeight.normal,
      color: ColorUtil.whiteColor,
      fontSize: AppFontSizes.xSmallTextSize);

  static TextStyle get textStyle14Bold => const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: AppFontSizes.font14);

  static TextStyle get textStyle10Regular => const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: AppFontSizes.xSmallTextSize);

  static TextStyle get textStyle12Bold => const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: AppFontSizes.font12);

  static TextStyle get normalBlackTextStyle_14 =>  TextStyle(
      color: ColorUtil.grayColor,
      fontWeight: FontWeight.w500,
      fontSize: 14);

}
