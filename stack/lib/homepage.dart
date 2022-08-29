import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hangmangame/appcolor/appcolor.dart';
import 'package:hangmangame/widgets/figureimage.dart';

class hopmepage extends StatefulWidget {
  const hopmepage({Key? key}) : super(key: key);

  @override
  State<hopmepage> createState() => _hopmepageState();
}

class _hopmepageState extends State<hopmepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        title: Text("hangman"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(
          child: Stack(
children: [
  figureImage(true, "assets/hang.png")
],
          ),
        )
      ],),
       

    );
  }
}
