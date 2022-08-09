import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cartwidget(img){
  return
            Container(
              width:480,
              height: 100,
              //color: Colors.white,
              decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
  ),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(img)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(

                      "Hawaian Shirt",
                      style: GoogleFonts.raleway(
                        // color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text(
                  "SANDY WILLIAMS",
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
                
                SizedBox(width: 5,),
          Text("\$25.99",
                            style: GoogleFonts.raleway(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),

          ),
          Image(image: AssetImage('assests/close.png',
          ),),
              ],
          ),

              ],
          ),
            );

}