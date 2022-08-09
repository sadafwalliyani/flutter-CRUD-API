import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/Widgets/screen1text.dart';
import 'package:practiceoftest/login.dart';
import 'package:practiceoftest/registration.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  final _controller = PageController(initialPage: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assests/screen44.png',
                ),
              )),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 250),
                    child: Image.asset(
                      'assests/screen4.png',
                      height: 300,
                      width: 300,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 90,
                    ),
                  ),
                   Text(
                    "If Your Already Registered",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      color: Colors.transparent,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          style: ElevatedButton.styleFrom(
                                                        side: BorderSide(width: 1, color: Colors.white),

                            primary: Colors.transparent,
                            fixedSize: Size(290, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                  SizedBox(
                    height: 15,
                  ),
                 
                  Container(
                      color: Colors.transparent,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registration()));
                          },
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.white),
                            primary: Colors.transparent,
                            fixedSize: Size(290, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Continue with SignUp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "By clicking this button you agree to our",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "terms of service and privacy policy",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                    ),
                  ),
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
