import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practiceoftest/screens/screen1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _controller = PageController(initialPage: 0);
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Screen1(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 5, 147),
        body: Center(
          child: Column(children: [
            SizedBox(height: 250,),
            Image.asset(
              'assests/Vector.png',
              
            ),
            SizedBox(height: 200,),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              axisDirection: Axis.horizontal,

              // effect: WormEffect(), // your preferred effect
              // onDotClicked: (index) {}

              effect: JumpingDotEffect(
                activeDotColor: Colors.grey,

                dotColor: Colors.white,

                dotHeight: 10,

                dotWidth: 10,

                spacing: 16,

                //verticalOffset: 50,

                jumpScale: 3,
              ),
            ),
          ]),
        ));
  }
}
