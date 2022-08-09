import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget screen1textwidget(text2) {
  return (
    Column(
                
                children: [
                Row(children: [
                  Text("No",
            style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),),Text(text2,
            style:
            TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),
                  ),
            
                ],
                ),
                 Row(
                                   children: [
                                     Text("Featured",
            style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 1,
                    fontFamily: 'Raleway',
                    color:Color(0xffFE2550),
                  ),),
                                   ],
                                 ),
                        Row(
                          children: [
                            Text("Tailored",
            style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 1,
                    fontFamily: 'Raleway',
                    color:Colors.white,
                  ),),
                          ],
                        ),
                Row(
                
                  children: [
                
                    Text(" Jimmy Chuka exploring new spring ",
                    maxLines:2,
                          style:TextStyle(
                            
                        fontSize: 12,
                      
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        wordSpacing: 1,
                        fontFamily: 'Raleway',
                        color:Colors.white,
                      ),),
                           
                
                            ],),
            Row(
                
                    children: [
                
                      Text(" sweater collection",
                      maxLines:2,
                            style:TextStyle(
                              
                          fontSize: 12,
                        
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 1,
                          fontFamily: 'Raleway',
                          color:Colors.white,
                        ),),
                             
                  
                              ],),
          ],
        )

  );
}
