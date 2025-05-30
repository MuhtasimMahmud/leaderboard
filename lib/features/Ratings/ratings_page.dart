import 'package:flutter/material.dart';
import 'package:flutter_core_module/base/base_page.dart';
import 'package:leaderboard/features/Ratings/ratings_controller.dart';
import 'package:leaderboard/features/leaderboard/leaderboard_controller.dart';

class RatingsPage extends IBasePage<RatingsController> {
  static String navigationPath = "/introPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ratings Page"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
