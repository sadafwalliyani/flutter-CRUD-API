import 'package:flutter/material.dart';
import 'package:practiceoftest/Pages/Tabbar.dart';
import 'package:practiceoftest/bottomnavigation/cart.dart';
import 'package:practiceoftest/bottomnavigation/home.dart';
import 'package:practiceoftest/bottomnavigation/setting.dart';
import 'package:practiceoftest/productScreens/measurement.dart';


class bottomNhome extends StatefulWidget {
  const bottomNhome({Key? key}) : super(key: key);

  @override
  State<bottomNhome> createState() => _HomeState();
}

class _HomeState extends State<bottomNhome> {
  int currentTab = 0;
  Widget currentScreen = const TabBarrr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text('Tabs Example'),
      // ),
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        // notchMargin: 50,
        color: Colors.white,
        
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = const TabBarrr();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home_outlined,
                        color: currentTab == 0 ? Colors.pink : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = const bmHome();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.shopping_bag_outlined,
                        color: currentTab == 1 ? Colors.pink : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = const measurement();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.settings,
                        color: currentTab == 2 ? Colors.pink : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = const cart();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.add,
                        color: currentTab == 3 ? Colors.pink : Colors.grey)),
              ]),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:practiceoftest/Pages/Tabbar.dart';
// import 'package:practiceoftest/bottomnavigation/cart.dart';
// import 'package:practiceoftest/bottomnavigation/home.dart';
// import 'package:practiceoftest/bottomnavigation/setting.dart';


// class bottomNhome extends StatefulWidget {
//   const bottomNhome({Key? key}) : super(key: key);

//   @override
//   State<bottomNhome> createState() => _HomeState();
// }

// class _HomeState extends State<bottomNhome> {
//   int currentTab = 0;
//   Widget currentScreen = const TabBarrr();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tabs Example'),
//       ),
//       body: currentScreen,
//       bottomNavigationBar: BottomAppBar(
//         elevation: 5,
//         // notchMargin: 50,
//         color: Colors.white,
        
//         child: Container(
//           height: 60,
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 MaterialButton(
//                     minWidth: 50,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const TabBarrr();
//                         currentTab = 0;
//                       });
//                     },
//                     child: Icon(Icons.home_outlined,
//                         color: currentTab == 0 ? Colors.pink : Colors.grey)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const bottomNhome();
//                         currentTab = 1;
//                       });
//                     },
//                     child: Icon(Icons.favorite,
//                         color: currentTab == 1 ? Colors.pink : Colors.grey)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const cart();
//                         currentTab = 2;
//                       });
//                     },
//                     child: Icon(Icons.search,
//                         color: currentTab == 2 ? Colors.pink : Colors.grey)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const Setting();
//                         currentTab = 3;
//                       });
//                     },
//                     child: Icon(Icons.person,
//                         color: currentTab == 3 ? Colors.pink : Colors.grey)),
//               ]),
//         ),
//       ),
//     );
//   }
// }