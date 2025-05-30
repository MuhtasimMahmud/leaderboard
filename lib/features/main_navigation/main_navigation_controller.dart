import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leaderboard/shared/shared_controller/tab_controller.dart';

class MainNavigationController extends MyTabController {
  MainNavigationController(super.repository);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  prepareTabList() {
    myTabs = <Tab>[
      Tab(icon: const Icon(Iconsax.home_15), text: 'Home'),
      Tab(icon: const Icon(Iconsax.chart_square), text: 'Leaderboard'),
      Tab(icon: const Icon(Iconsax.award), text: 'Rating'),
    ];
  }
}
