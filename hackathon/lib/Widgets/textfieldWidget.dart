import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textfieldWidget(textfield) {
  return (Container(
      width: 300,
      // color: Color.fromARGB(255, 254, 254, 255),
      child: TextField(
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800],
            fontFamily: 'Play',fontSize: 20,
            fontWeight: FontWeight.w700,
            wordSpacing: 0.3,),
            hintText: 'Enter Mobile Number',
            prefixIcon: Icon(Icons.phone),
            fillColor: Colors.white70),
      )));
}
