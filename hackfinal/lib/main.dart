import 'package:flutter/material.dart';
import 'package:hackfinal/modelview/homemodel.dart';
import 'package:hackfinal/view/bottomnavigation/bottom_nav_controller.dart';
import 'package:hackfinal/view/bottomnavigation/home.dart';
import 'package:hackfinal/view/detailcourse.dart';
import 'package:hackfinal/view/lessons/toolbox.dart';
import 'package:hackfinal/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:
  // DetailCourse()
   SplashScreen()

      );
  }
}
