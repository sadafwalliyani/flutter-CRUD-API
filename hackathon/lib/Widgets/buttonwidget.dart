import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonwidget(){
  return(
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: (
  Row(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
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
                                        BoxConstraints(maxWidth: 100, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "#Summer",
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
                              SizedBox(width: 10,),
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
                                        BoxConstraints(maxWidth: 100, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "#Purple",
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
                               SizedBox(width: 100,),
                              Row(children: [
                                Image.asset(
                        'assests/arrow.png',
                        height: 210,
                        width: 50,
                      ),
                      SizedBox(width: 2,),
                Text("1.2k",
                          style: GoogleFonts.raleway(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
  
          ), 
                              ],)
                  ],)
    ),
  ));
}