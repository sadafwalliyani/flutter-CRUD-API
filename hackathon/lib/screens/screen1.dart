import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/screen1text.dart';
import 'package:practiceoftest/screens/screen2.dart';
import 'package:practiceoftest/screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _controller = PageController(initialPage: 0);
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Screen2(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assests/screen.png',
                ),
              )),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: Image.asset(
                        'assests/Vector.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 90,
                    ),
                    child: Container(
                      // height: 330,
                      // width: 270,
                      child: screen1textwidget("1"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Colors.transparent,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen2()));
                          },
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 1, color: Colors.white),
                              primary: Colors.transparent,
                              fixedSize: Size(290, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    axisDirection: Axis.horizontal,

                    // effect: WormEffect(), // your preferred effect
                    // onDotClicked: (index) {}

                    effect: JumpingDotEffect(
                      activeDotColor: Colors.grey,

                      dotColor: Colors.pink,

                      dotHeight: 10,

                      dotWidth: 10,

                      spacing: 16,

                      //verticalOffset: 50,

                      jumpScale: 3,
                    ),
                  ),
                ]),
              ),
            )));
  }
}
