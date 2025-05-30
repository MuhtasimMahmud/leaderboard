import 'package:flutter_core_module/base/base_binding.dart';
import 'package:get/get.dart';
import 'package:leaderboard/data/safe_local_data_call.dart';
import 'package:leaderboard/data/safe_remote_api_call.dart';
import 'package:leaderboard/features/Ratings/ratings_controller.dart';
import 'package:leaderboard/features/Ratings/ratings_repository.dart';
import 'package:leaderboard/features/home/home_controller.dart';
import 'package:leaderboard/features/home/home_repository.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_controller.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_repository.dart';
import 'package:leaderboard/features/main_navigation/main_navigation_controller.dart';

import 'main_navigation_repository.dart';

class MainNavigationBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.put(SafeRemoteApiCall());
    Get.put(SafeLocalCall());

    Get.put(MainNavigationRepository(Get.find<SafeRemoteApiCall>()));
    Get.put(MainNavigationController(Get.find<MainNavigationRepository>()));

    Get.put(HomeRepository(Get.find<SafeRemoteApiCall>()));
    Get.put(HomeController(Get.find<HomeRepository>()));

    Get.put(LeaderboardRepository(Get.find<SafeRemoteApiCall>()));
    Get.put(LeaderboardController(Get.find<LeaderboardRepository>()));

    Get.put(RatingsRepository(Get.find<SafeRemoteApiCall>()));
    Get.put(RatingsController(Get.find<RatingsRepository>()));
  }
}
