import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class AppProvider extends InheritedWidget {
  final MyApp? myApp;
  final Widget childView;
  const AppProvider({super.key, required this.childView, this.myApp})
      : super(child: childView);

  @override
  bool updateShouldNotify(oldWidget) => true;

  static AppProvider? of() {
    return Get.context!.dependOnInheritedWidgetOfExactType<AppProvider>();
  }

  static MyApp? getApplication() {
    return of()?.myApp;
  }
}
