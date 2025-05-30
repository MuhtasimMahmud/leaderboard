import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaderboard/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.red,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white70,
      ),
      title: 'Leaderboard App',
      getPages: AppRoutes().getPages(),
      debugShowCheckedModeBanner: false,
    );
  }
}
