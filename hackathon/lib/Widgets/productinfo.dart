import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ProductWidget(img,txt,txt2){
  return
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(img),
              ),
              Column(
                children: [
                  Text(

                    txt,
                    style: GoogleFonts.raleway(
                      // color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text(
                txt2,
                style: GoogleFonts.raleway(
                  color: Color.fromARGB(255, 170, 156, 156),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
                ],
              ),
             
              
          Row(
            children: [
              Image(image: AssetImage('assests/Vector3.png')),
              SizedBox(width: 5,),
          Text("23k",
                          style: GoogleFonts.raleway(
                  color: Color.fromARGB(255, 170, 156, 156),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),

          ),
            ],
          ),

            ],
          );

}