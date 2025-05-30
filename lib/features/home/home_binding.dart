import 'package:flutter_core_module/base/base_binding.dart';
import 'package:get/get.dart';
import 'package:leaderboard/data/safe_local_data_call.dart';
import 'package:leaderboard/data/safe_remote_api_call.dart';
import 'home_controller.dart';
import 'home_repository.dart';

class HomeBinding implements BaseBinding {
  @override
  void dependencies() {
    Get.put(SafeRemoteApiCall());
    Get.put(SafeLocalCall());

    Get.put(HomeRepository(Get.find<SafeRemoteApiCall>()));
    Get.put(HomeController(Get.find<HomeRepository>()));
  }
}
