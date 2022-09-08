import 'package:cam_scanner/screens/search_places_screen.dart';
import 'package:cam_scanner/screens/simple_map_screen.dart';
import 'package:flutter/material.dart';

import 'current_location_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Google Maps"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: 200,
          alignment: Alignment.topRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
 FloatingActionButton(
                    onPressed:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const SimpleMapScreen();
                }));            
                    },
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.map,
                    size: 30,
                  ),
                  ),

 FloatingActionButton(
                    onPressed:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const CurrentLocationScreen();
                }));            
                    },
                    backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(
                    Icons.add_location,
                    size: 36,
                  ),
                
                  ),
      
        FloatingActionButton(
                    onPressed:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const SearchPlacesScreen();
                }));            
                    },
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.home_rounded,
                      size: 36,
                    ),
                  ),
                       ],
          ),
        ),
      ),
    );
  }
}
