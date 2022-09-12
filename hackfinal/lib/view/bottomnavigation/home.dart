import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackfinal/view/bottomnavigation/bottom_nav_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, //if you dont want by clicking apni marzi ka color background color not work after clicking on this
          selectedFontSize: 20,
          unselectedFontSize: 15,
          iconSize: 15,
          selectedItemColor: Color.fromARGB(255, 146, 216, 189),
          unselectedItemColor: Color.fromARGB(255, 58, 56, 56),
          backgroundColor: Color.fromARGB(255, 250, 252, 251),
          currentIndex: currentindex,
          onTap: (index) => setState(() {
                currentindex =
                    index; //current index shuro me 0 jaise hi tap kro current index usk brabr
              }), //if current index 0 then home slected and colors will be blue other will be grey

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow),
                label: "add",
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_outlined),
                label: "profile",
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "profile",
                backgroundColor: Colors.pink),
          ]),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(children: [
                    Text(
                      "Hi Hafiz 👋",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 53, 59, 53),
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                Row(
                  children: [
                    SafeArea(
                      child: Text(
                        "Let’s Find Your Course!",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 53, 59, 53),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 50),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 231, 228, 228))),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.backpack)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(141, 218, 219, 214))),
                        height: 50,
                        width: 50,
                        child: Icon(Icons.notification_add),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 360,
                      height: 50,
                      child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(240, 240, 240, 1),
                              hintText: "serach here",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.search)),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Icon(Icons.search_off_rounded),
                              ))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    containerr(Icons.movie, "Coding"),
                    containerr(Icons.design_services, "Design"),
                    containerr(Icons.speaker, "Marketting"),
                    containerr(Icons.business, "Business"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    containerr(Icons.person, "Lifestyle"),
                    containerr(Icons.music_note, "Music"),
                    containerr(Icons.book, "Academics"),
                    containerr(Icons.more, "More")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue Your Lessons",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 5, 5, 5),
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 165, 240, 155),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        height: 120,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assests/CIRCLEE.PNG"),
                                fit: BoxFit.cover)))
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: 100,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assests/second.PNG"),
                                fit: BoxFit.cover)))
                  ],
                )
              ],
            )),
      ),
    );
  }
}

containerr(icon, text) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 223, 221, 221),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromARGB(249, 249, 250, 248))),
        height: 70,
        width: 70,
        child: Center(
            child: Icon(
          icon,
          color: Colors.orange,
        )),
      ),
      Center(
          child: Text(
        "$text",
        style: TextStyle(color: Colors.grey),
      ))
    ],
  );
}
