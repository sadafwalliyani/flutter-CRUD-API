import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:medicalapp/view/splashScreens/welcomeScreen.dart';
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
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
           Center(
            child: Image(
                image: AssetImage(
              'assests/Splashscreen.PNG',),
              ),            
              
          ),
          LoadingIndicator(
    indicatorType: Indicator.ballPulse, /// Required, The loading type of the widget
    colors: const [Colors.white],       /// Optional, The color collections
    strokeWidth: 2,                     /// Optional, The stroke of the line, only applicable to widget which contains line
    backgroundColor: Colors.black,      /// Optional, Background of the widget
    pathBackgroundColor: Colors.black   /// Optional, the stroke backgroundColor
)
          // SmoothPageIndicator(controller: _controller, count: 2,axisDirection: Axis.horizontal,
          // effect:Indicator.ballRotateChase,),
          
        ],
          
        ),
        );
  }
}
