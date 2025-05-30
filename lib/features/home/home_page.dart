import 'package:flutter/material.dart';
import 'package:flutter_core_module/base/base_page.dart';

import 'home_controller.dart';

class HomePage extends IBasePage<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("This is homepage"),
        ],
      ),
    );
  }
}
