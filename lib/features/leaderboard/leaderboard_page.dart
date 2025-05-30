import 'package:flutter/material.dart';
import 'package:flutter_core_module/base/base_page.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_controller.dart';

class LeaderboardPage extends IBasePage<LeaderboardController> {
  static String navigationPath = "/introPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Intro Page"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
