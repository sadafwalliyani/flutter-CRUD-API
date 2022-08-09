import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget gridviewwidget(){
  return (
       
  Container(
        child: GridView.extent(  
              primary: false,  
              padding: const EdgeInsets.all(2),  
              crossAxisSpacing: 5,  
              mainAxisSpacing: 5,  
              maxCrossAxisExtent: 200.0,  
              children: <Widget>[  
                                Image(image: AssetImage('assests/1.png')),   
                                Image(image: AssetImage('assests/2.png')),  
                                Image(image: AssetImage('assests/3.png')),  
                                Image(image: AssetImage('assests/Bitmap.png')),  
  
              ],  
            ),
      )
                
  );
}