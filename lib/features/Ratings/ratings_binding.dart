import 'package:flutter_core_module/base/base_binding.dart';
import 'package:get/get.dart';
import 'package:leaderboard/data/safe_local_data_call.dart';
import 'package:leaderboard/data/safe_remote_api_call.dart';
import 'package:leaderboard/features/Ratings/ratings_controller.dart';
import 'package:leaderboard/features/Ratings/ratings_repository.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_controller.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_repository.dart';

class RatingsBinding implements BaseBinding {
  @override
  void dependencies() {
    Get.put(SafeRemoteApiCall());
    Get.put(SafeLocalCall());

    Get.put(RatingsRepository(Get.find<SafeRemoteApiCall>()));
    Get.put(RatingsController(Get.find<RatingsRepository>()));
  }
}
