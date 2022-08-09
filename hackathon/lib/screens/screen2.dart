import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/Widgets/screen1text.dart';
import 'package:practiceoftest/screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
      final _controller = PageController(initialPage: 1);
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Screen3(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                  image: AssetImage(
                    'assests/screen2.png',
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
                      child: screen1textwidget("2"),
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
                                    builder: (context) => Screen3()));
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
                          SizedBox(height: 10,),
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
