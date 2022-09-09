// import 'package:cam_scanner/screens/search_places_screen.dart';
// import 'package:cam_scanner/screens/simple_map_screen.dart';
// import 'package:flutter/material.dart';

// import 'current_location_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       appBar: AppBar(
//         title: const Text("Flutter Google Maps"),
//         centerTitle: true,
//       ),
//       body: 
      
//       SizedBox(
//         width: MediaQuery.of(context).size.width,
//         child: Container(
//           height: 200,
//           alignment: Alignment.topRight,
//           child: Column(
            
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//  FloatingActionButton(
//                     onPressed:(){
//                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
//                   return const SimpleMapScreen();
//                 }));            
//                     },
//                   backgroundColor: Colors.green,
//                   child: Icon(
//                     Icons.map,
//                     size: 30,
//                   ),
//                   ),

//  FloatingActionButton(
//                     onPressed:(){
//                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
//                   return const CurrentLocationScreen();
//                 }));            
//                     },
//                     backgroundColor: Colors.deepPurpleAccent,
//                   child: Icon(
//                     Icons.add_location,
//                     size: 36,
//                   ),
                
//                   ),
      
//         FloatingActionButton(
//                     onPressed:(){
//                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
//                   return const SearchPlacesScreen();
//                 }));            
//                     },
//                     backgroundColor: Colors.red,
//                     child: Icon(
//                       Icons.home_rounded,
//                       size: 36,
//                     ),
//                   ),
//                        ],
//           ),
//         ),
        
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:cam_scanner/screens/search_places_screen.dart';
import 'package:cam_scanner/screens/simple_map_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'current_location_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition initialPosition = 
  CameraPosition(target: LatLng(37.42796133580664, -122.085749655962), 
  zoom: 14.0);
  static const CameraPosition targetPosition = 
  CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), 
  zoom: 14.0, bearing: 192.0, tilt: 60);

  // MapType _currentMapType = MapType.normal;
  
  // Future  <void>  _changeMapType() async {
  //   setState(() {
  //     _currentMapType = _currentMapType == MapType.normal
  //         ? MapType.satellite
  //         : MapType.normal;
  //   });
  // }
  // late final GoogleMapController _googleMapController;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Google Maps",),        
        centerTitle: true,
      ),
      body: 
      
    Stack(
          children: [
           GoogleMap(
        initialCameraPosition: initialPosition,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
      
       
                  //   FloatingActionButton(
                  //   onPressed: _changeMapType,
                  //   backgroundColor: Colors.indigo,
                  //   child: Icon(
                  //     Icons.map_outlined,
                  //     size: 30,
                  //   ),
                  // ),

                  ],
                  
                  
                    
                      ),
              )
                    )
                                   ],
              ),
            );
  }
}
