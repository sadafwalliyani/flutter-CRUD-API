// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:practiceoftest/Pages/children.dart';
// import 'package:practiceoftest/Pages/men.dart';
// import 'package:practiceoftest/Pages/searchservices.dart';
// import 'package:practiceoftest/Pages/women.dart';
// import 'package:practiceoftest/Widgets/searchbarWidget.dart';
// import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';
// import 'package:practiceoftest/bottomnavigation/cart.dart';
// import 'package:practiceoftest/bottomnavigation/shopping.dart';

// class TabBarrr extends StatefulWidget {
//   const TabBarrr({Key? key}) : super(key: key);

//   @override
//   State<TabBarrr> createState() => _TabBarrrState();
// }

// class _TabBarrrState extends State<TabBarrr>
//     with SingleTickerProviderStateMixin {
//   // var queryResultSet = [];
//   // var tempSearchStore = [];

//   // initiateSearch(value) {
//   //   if (value.length == 0) {
//   //     setState(() {
//   //       queryResultSet = [];
//   //       tempSearchStore = [];
//   //     });
//   //   }

//   //   var capitalizedValue =
//   //       value.substring(0, 1).toUpperCase() + value.substring(1);

//   //   if (queryResultSet.length == 0 && value.length == 1) {
//   //     SearchService().searchByName(value).then((QuerySnapshot docs) {
//   //       // for (int i = 0; i < docs.Products.length; ++i) {
//   //       //   queryResultSet.add(docs.documents[i].data);
//   //       // }
//   //     });
//   //   } else {
//   //     tempSearchStore = [];
//   //     queryResultSet.forEach((element) {
//   //       if (element['Name of Product'].startsWith(capitalizedValue)) {
//   //         setState(() {
//   //           tempSearchStore.add(element);
//   //         });
//   //       }
//   //     });
//   //   }
//   // }

//   late TabController _controller;
//   @override
//   void initState() {
//     // TODO: implement initState
//     _controller = TabController(
//       length: 3,
//       vsync: this,
//       initialIndex: 0,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 207, 205, 205),
//         actions: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Container(
//               width: 320,
//               child: TextField(
//                 // onChanged: (val) {
//                 //   initiateSearch(val);
//                 // },
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0)),
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintStyle: TextStyle(
//                       color: Color.fromARGB(255, 223, 215, 215),
//                       fontFamily: 'Play',
//                       fontSize: 12,
//                       fontWeight: FontWeight.w700,
//                       wordSpacing: 0.3,
//                     ),
//                     hintText: "Search by Name",
//                     prefixIcon: IconButton(
//                       onPressed: () {
//                         Navigator.push((context), MaterialPageRoute(builder: (BuildContext context) =>Shopping()));
//                       },
//                       icon: Icon(
//                         Icons.search,
//                       ),
//                     )),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: CircleAvatar(
//                 radius: 35,
//                 backgroundImage: AssetImage('assests/avatar.png'),
//                 child: IconButton(
//                   icon: Icon(Icons.circle),
//                   iconSize: 1,
//                   onPressed: () {
//                     // Navigator.push(context,
//                     //     MaterialPageRoute(builder: (context) => profiile()));
//                   },
//                 )),
//           ),
//         ],
//         bottom: TabBar(
//             controller: _controller,
//             indicatorColor: Colors.white,
//             tabs: [
//               Tab(
//                 text: "Women",
//               ),
//               Tab(
//                 text: "Men",
//               ),
//               Tab(
//                 text: "Children",
//               ),
//             ]),
//       ),
//       body: Container(
//         child: TabBarView(controller: _controller, children: [
//           women(),
//           men(),
//           children(),
//         ]),
//       ),
//     );
//   }
// }
