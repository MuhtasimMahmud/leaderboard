import 'package:get/get.dart';

import 'package:leaderboard/features/main_navigation/main_navigation_binding.dart';
import 'package:leaderboard/features/main_navigation/main_navigation_page.dart';

class AppRoutes {
  List<GetPage>? getPages() {
    List<GetPage>? list = [];

    list.add(GetPage(
        name: '/',
        binding: MainNavigationBinding(),
        page: () => MainNavigationPage()));

    return list;
  }
}
