import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
      
        Text("The best  doctor appointment & Consultation App of the century for you health and medical needs!",
      maxLines: 3,
      textAlign:TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          
         
          

        ),),
      ],),
      
    );
  }
}
