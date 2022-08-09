import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practiceoftest/Widgets/buttonwidget.dart';
import 'package:practiceoftest/Widgets/graytxtwiget.dart';
import 'package:practiceoftest/Widgets/meacontainer.dart';
import 'package:practiceoftest/Widgets/pinkbutton.dart';
import 'package:practiceoftest/Widgets/paynowbutton.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bnbar.dart';
import 'package:practiceoftest/productScreens/measurement2.dart';
import 'package:practiceoftest/productScreens/specifymaterial.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class measurement extends StatefulWidget {
  const measurement({Key? key}) : super(key: key);

  @override
  State<measurement> createState() => _measurementState();
}

class _measurementState extends State<measurement> {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 350,
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                  icon: ImageIcon(AssetImage('assests/backarrow.png',)),
                  iconSize:50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bottomNhome()));
                  },
                ),
                SizedBox(
                      width: 100,
                    ),
                            
                  
                    Row(
                      children: [
                        Image.asset(
                          'assests/arrow.png',
                          height: 210,
                          width: 50,
                        ),
                     SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assests/Vector3.png',
                      height: 210,
                      width: 50,
                    ),  ],
                    ),
                   
                  ],
                ),

                Image(
                  image: AssetImage(
                    'assests/screen4.png',
                  ),
                  height: 300,
                  width: 500,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  axisDirection: Axis.horizontal,

                  // effect: WormEffect(), // your preferred effect
                  // onDotClicked: (index) {}

                  effect: JumpingDotEffect(
                    activeDotColor: Colors.pink,

                    dotColor: Colors.deepPurple.shade100,

                    dotHeight: 10,

                    dotWidth: 10,

                    spacing: 16,

                    //verticalOffset: 50,

                    jumpScale: 3,
                  ),
                ),
                Text(
                  "Perfect Situation Purple Long Sleeve Dress",
                  style: GoogleFonts.raleway(
                    color: Color.fromARGB(255, 65, 61, 65),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "\$25.99",
                      style: GoogleFonts.raleway(
                        color: Colors.pink,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
//                     new GestureDetector(
//   onTap: () {
//     Navigator.push(context ,     MaterialPageRoute(builder: (context) => measurement()));
//   },
//   child: 
//   graytxt("INFO")
// ),
      graytxt("INFO"),                    
      new GestureDetector(
  onTap: () {
    Navigator.push(context ,     MaterialPageRoute(builder: (context) => measurement2()));
  },
  child: 
  graytxt("MEASUREMENT")
),
     
                    
                  ],
                ),
                 Row(
                  children: [
                 Image(
                  image: AssetImage(
                    'assests/Line.png',
                  ),
                  height:20,
                  width: 200,
                ),
                  ],
                ),
               

                SizedBox(
                  height: 15,
                ),
         
                
                Row(
                  children: [
                    graytxt("MATERIALS"),
                  ],
                ),
                   
                SizedBox(   height: 10,  ),
               Column(
                  children: [
                   Text("AS SEEN IN REDBOOK! You'll be primed and ready in the Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress has a casual shift shape, accented by a rounded neckline.",
                   textAlign: TextAlign.justify,
    maxLines: 5,
    style: GoogleFonts.raleway(
      color: Color.fromARGB(255, 170, 156, 156),
      fontSize: 15,
    
      fontWeight: FontWeight.bold,
    ),),
                  ],
                ),
                SizedBox(   height: 10,  ),
                Row(
                  children: [
                   
                    graytxt("WASH INSTRUCTIONS"),
                  ],
                ),

                  SizedBox(
                  height: 8,
                ),
// new GestureDetector(
//   onTap: () {
//     Navigator.push(context ,     MaterialPageRoute(builder: (context) => specifymaterial()));
//   },
//   child: 
//  pinkbtn("Add to Bag", 200,),
// ),
RaisedButton(
    onPressed: () {
       Navigator.pushReplacement<void,void>(context,
                    MaterialPageRoute<void>(builder: (context) => specifymaterial()));
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
        color: Color(0xffFE2550),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth:200, maxHeight: 50),
        alignment: Alignment.center,
        child: Text(
          "Add To Bag",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  )
  ]
  )
                
              ),
            )
            ),
      );
    
  }
}
