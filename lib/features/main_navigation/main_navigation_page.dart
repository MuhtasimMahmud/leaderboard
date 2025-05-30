import 'package:flutter/material.dart';
import 'package:flutter_core_module/base/base_page.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leaderboard/features/Ratings/ratings_page.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_page.dart';
import 'package:leaderboard/shared/widgets/common_appbar.dart';
import 'package:leaderboard/shared/widgets/top_indicator.dart';
import 'package:leaderboard/utils/app_sizes.dart';
import 'package:leaderboard/utils/color_util.dart';

import '../home/home_page.dart';
import 'main_navigation_controller.dart';

class MainNavigationPage extends IBasePage<MainNavigationController> {
  const MainNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          padding: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
          indicator: TopIndicator(),
          labelColor: ColorUtil.primaryColor,
          dividerColor: Colors.white,
          indicatorColor: ColorUtil.primaryColor,
          unselectedLabelColor: ColorUtil.defaultIconColor,
          tabs: controller.myTabs,
          controller: controller.tabController,
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.tabController,
        children: [
          HomePage(),
          LeaderboardPage(),
          RatingsPage(),
        ],
      ),
    );
  }

  _appBar() {
    return CommonAppBar(
      appBarColor: Colors.white,
      titleWidget: Padding(
          padding: EdgeInsets.only(left: AppPadding.appBarItem),
          child: Icon(Iconsax.game5)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: AppPadding.appBarItem),
          child: InkWell(
              onTap: () {
                // Get.toNamed(NotificationPage.navigationPath);
              },
              child: Icon(Iconsax.notification)),
        ),
      ],
    );
  }
}
