import 'package:flutter/material.dart';
import 'package:leaderboard/shared/widgets/reusable_title_text.dart';
import 'package:leaderboard/utils/color_util.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? centerTitle;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final String? title;
  final Widget? titleWidget;
  final Color? appBarColor;

  const CommonAppBar(
      {super.key,
      this.leading,
      this.actions,
      this.bottom,
      this.centerTitle,
      this.title,
      this.appBarColor,
      this.titleWidget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: appBarColor ?? ColorUtil.primaryColor,
        centerTitle: centerTitle ?? false,
        leading: leading,
        actions: actions,
        bottom: bottom,
        titleSpacing: 0,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: titleWidget ??
            ReusableTitleText(title ?? "",
                style: TextStyle(
                    color: ColorUtil.appbarTitleColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600)));
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom != null ? 70.0 : 0.0));
}
