import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class ProfileMentor extends StatefulWidget {
  const ProfileMentor({super.key});

  @override
  State<ProfileMentor> createState() => _ProfileMentorState();
}

class _ProfileMentorState extends State<ProfileMentor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile Mentor",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.more_horiz,
                size: 30,
                color: Colors.black,
              ),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            //IconButton
            //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.white,
          //elevation: 50.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          //systemOverlayStyle: SystemUiOverlayStyle.light,
        ), //AppBar
        body: Container(
          // Padding: padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('Assets/circleavatar.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    "Azamat Baimatov",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text("Senior UI/UX Designer"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("5",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Courses"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("17",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Students"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("5",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Reviews"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(child: Image.asset('Assets/image1.PNG')),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Text(
                      "Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.First we’ll describe the brief & how to work with a UX persona.Then you’ll learn how to create simple wireframes.From there we’ll look at how to implement colours  images properly in your designs.You’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.You’ll learn how to create your own icons, buttons & other UI components.",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ))
            ],
          ),
        ), //Center
      ), //Scaffold
      debugShowCheckedModeBanner: false, //Removing Debug Banner
    );
  }
}