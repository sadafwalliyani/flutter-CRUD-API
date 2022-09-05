import 'package:flutter/material.dart';
import 'package:googlemaps/maps.dart';
import 'package:googlemaps/polyline.dart';
import 'package:googlemaps/sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: 
       //maps(),
       //MapSample(),
      polyLineScreen(),
      );
  }
}
