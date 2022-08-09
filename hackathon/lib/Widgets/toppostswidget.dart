import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget toppostswidget(img,txt1,txt2){
  return(
    Column(children: [
        Image(image: AssetImage(img),
        ),

       Row(
   
         children: [
           Text(txt1,
                                style: GoogleFonts.raleway(
                        color: Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 60,),
                       Image(image: AssetImage('assests/Vector3.png')),
         ],
       ),
                   Text(
                  txt2,
                  style: GoogleFonts.raleway(
                    color: Color.fromARGB(255, 170, 156, 156),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

    ],)
  );
}