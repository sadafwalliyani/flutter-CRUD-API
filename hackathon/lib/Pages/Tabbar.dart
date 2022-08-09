import 'package:flutter/material.dart';
import 'package:practiceoftest/Pages/children.dart';
import 'package:practiceoftest/Pages/men.dart';
import 'package:practiceoftest/Pages/women.dart';
import 'package:practiceoftest/Widgets/searchbarWidget.dart';

class TabBarrr extends StatefulWidget {
  const TabBarrr({Key? key}) : super(key: key);

  @override
  State<TabBarrr> createState() => _TabBarrrState();
}

class _TabBarrrState extends State<TabBarrr>
    with SingleTickerProviderStateMixin {
  //       final controller = TextEditingController();

  // void _fetchUserData() async {
  //   // do something
  //   setState(() {
  //     controller.text = "Search";
  //   });
  // }
  
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 205, 205),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                width: 320,
                child: TextField(
                  // controller: controller,
         
                  // scrollPadding: ,

                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 223, 215, 215),
                        fontFamily: 'Play',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        wordSpacing: 0.3,
                      ),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assests/avatar.png'),
                child: IconButton(
                  icon: Icon(Icons.circle),
                  iconSize: 1,
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => profiile()));
                  },
                )),
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.pink,
          unselectedLabelColor:Colors.grey,
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Men",
              ),
              Tab(
                text: "Children",
              ),
            ]),
      ),
      body: Container(
        child: TabBarView(controller: _controller, children: [
          women(),
          men(),
          children(),
        ]),
      ),
    );
  }
}
