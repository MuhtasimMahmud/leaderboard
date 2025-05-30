import 'package:flutter/material.dart';
import 'package:flutter_core_module/base/base_controller.dart';
import 'package:get/get.dart';

class MyTabController extends IBaseController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  List<Tab> myTabs = [];

  void prepareTabList() {
    myTabs = <Tab>[
      // This list will be set by the overriding
    ];
  }

  MyTabController(super.repository);

  @override
  void onInit() {
    super.onInit();
    prepareTabList();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
