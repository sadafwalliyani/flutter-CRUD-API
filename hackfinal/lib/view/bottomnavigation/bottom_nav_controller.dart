// import 'package:flutter/material.dart';
// import 'package:hackfinal/view/bottomnavigation/cart.dart';
// import 'package:hackfinal/view/bottomnavigation/home.dart';
// import 'package:hackfinal/view/bottomnavigation/profilementor.dart';
// import 'package:hackfinal/view/bottomnavigation/add.dart';

// class BottonNavBar extends StatefulWidget {
//   const BottonNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottonNavBar> createState() => _BottonNavBarState();
// }

// class _BottonNavBarState extends State<BottonNavBar> {
//   final pages = const [
//     Home(), AddLessons(), ProfileMentor(), Cart()];
//   var _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType
//               .fixed, //if you dont want by clicking apni marzi ka color background color not work after clicking on this
//           selectedFontSize: 25,
//           unselectedFontSize: 20,
//           iconSize: 20,
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.grey,
//           backgroundColor: Color.fromARGB(255, 68, 65, 65),
//           currentIndex: _currentIndex,
//           onTap: (index) => setState(() {
//                 _currentIndex =
//                     index; //current index shuro me 0 jaise hi tap kro current index usk brabr
//               }), //if current index 0 then home slected and colors will be blue other will be grey

//           items: [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: "home",
//                 backgroundColor: Colors.red),
           
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.play_arrow),
//                 label: "add",
//                 backgroundColor: Colors.purple),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_outline_outlined),
//                 label: "profile",
//                 backgroundColor: Colors.pink),
//                  BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: "profile",
//                 backgroundColor: Colors.pink),
//           ]),    );
//   }
// }