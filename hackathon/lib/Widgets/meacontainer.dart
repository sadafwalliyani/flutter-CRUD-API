import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget meacontainer(txt){
  return(
Container(
  height: 50,
  width: 100,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
  color: Color.fromARGB(255, 207, 198, 198),
  ),
  child: Padding(
    padding: const EdgeInsets.all(10),
    child: Text(txt,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),),
  ),
)
  );
}