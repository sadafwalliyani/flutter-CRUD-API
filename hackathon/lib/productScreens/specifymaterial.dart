import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practiceoftest/Widgets/buttonwidget.dart';
import 'package:practiceoftest/Widgets/graytxtwiget.dart';
import 'package:practiceoftest/Widgets/listview.dart';
import 'package:practiceoftest/Widgets/meacontainer.dart';
import 'package:practiceoftest/Widgets/pinkbutton.dart';
import 'package:practiceoftest/Widgets/paynowbutton.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bnbar.dart';
import 'package:practiceoftest/productScreens/paymentdone.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class specifymaterial extends StatefulWidget {
  const specifymaterial({Key? key}) : super(key: key);

  @override
  State<specifymaterial> createState() => _specifymaterialState();
}

class _specifymaterialState extends State<specifymaterial> {
  
  // final _controller = PageController(initialPage: 0);
static List abc = [
    "Lace",
    "Ankara",
    "Guinea",
    "Linen",
    "Silk",
    "Wool",
    "Cotton",
 
     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

    
      appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 207, 205, 205),
  title: Text("Specify Material",
                   style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
               ),
),
  leading: GestureDetector(
    onTap: () {  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bottomNhome())); },
    child: ImageIcon(AssetImage('assests/backarrow.png',),),    
    
  ),
),
body: Column(
  children: [
      Container(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("MATERIAL",
           style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
          ),
        ),
          color: Colors.white,
          height: 50,
          width: MediaQuery.of(context).size.width,
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: abc.length,
              itemBuilder: (context, i) {
                return chatWidget(abc[i],);
              }),
        ), 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [

            Row(
            children: [
              graytxt("ENTER THE COLOR"),
            ],
          ),
          SizedBox(height: 10,),
          Image(image: AssetImage('assests/colorbar.png',
          ),
          height: 100,
          width: 300,),
SizedBox(height: 10,),
          Row(
            children: [
              graytxt("HOW MANY YARDS"),
            ],
          ),
            SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                color:Colors.grey,),
                
                child: Padding(
                  padding: const EdgeInsets.only(left:10,
                  top:5),
                  child: graytxt("5",),
                )),
            ],
          ),
          SizedBox(height: 15,),
       RaisedButton(
    onPressed: () {
       Navigator.pushReplacement<void,void>(context,
                    MaterialPageRoute<void>(builder: (context) => paymentdone()));
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          color: Color(0xffFE2550),
          borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
          constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.width, maxHeight: 50),
          alignment: Alignment.center,
          child: Text(
            "DONE",
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
          ],),
        ) 

      
  ],
),


    );
  }
}

