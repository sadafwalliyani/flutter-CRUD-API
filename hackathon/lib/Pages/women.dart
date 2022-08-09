import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/buttonwidget.dart';
import 'package:practiceoftest/Widgets/gridview.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/home.dart';
import 'package:practiceoftest/productScreens/measurement.dart';

class women extends StatefulWidget {
  const women({Key? key}) : super(key: key);

  @override
  State<women> createState() => _womenState();
}

class _womenState extends State<women> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  ProductWidget('assests/oval7.png', "Sandy Willams",
                      "Freelance Tailor "),
                  SizedBox(
                    height: 5,
                  ),
                  txtwidget(),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: 
                            ClipRRect(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => measurement()));
                            },
                            child:  Image.asset(
                              'assests/screen4.png',
                              height: 300,
                              width: 200,
                            ),)
                            )
                           
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assests/1.png',
                                height: 200,
                                width: 100,
                              ),
                              Image.asset(
                                'assests/2.png',
                                height: 200,
                                width: 100,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assests/3.png',
                                height: 200,
                                width: 100,
                              ),
                              Image.asset(
                                'assests/Bitmap.png',
                                height: 200,
                                width: 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  buttonwidget(),
                  SizedBox(
                    height: 1,
                  ),
                  ProductWidget('assests/oval8.png', "Alero Samuel",
                      "Designer at toki designs"),
                  SizedBox(
                    height: 5,
                  ),
                  txtwidget(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
