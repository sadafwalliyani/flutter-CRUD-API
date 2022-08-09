import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Pages/children.dart';

Widget paynowwidget(){
  return 
  Container(
    height: 100,
    width: 380,
    child: (
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
 
     Text("Total:",
                              style: GoogleFonts.raleway(
                      color: Color.fromARGB(255, 177, 169, 172),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
       ),Text("\$25.99",
                              style: GoogleFonts.raleway(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
       ),
       RaisedButton(
                                  onPressed: (){
      
              //  Navigator.pushReplacement<void,void>(context,
              //               MaterialPageRoute<void>(builder: (context) => TabBarrr()));
      
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(80.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        // gradient: LinearGradient(
                                        //   colors: [Color(0xffFE2550), Color(0xff000000)],
                                         // begin: Alignment.centerLeft,
                                          //end: Alignment.centerRight,
                                          color: Color(0xffFE2550),
                                          borderRadius: BorderRadius.circular(5),
                                          
                                        ),
                                        
                                    child: Container(
                                      constraints:
                                          BoxConstraints(maxWidth: 200,maxHeight: 50),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Pay Now",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

],)
    ),
  );
}