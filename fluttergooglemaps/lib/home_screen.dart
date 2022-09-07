import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(24.914397642573633, 67.05843111598043),
    zoom: 15,
  );

  List<Marker> _marker = [];
  List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(24.9210073919243, 67.05770684580877),
        infoWindow: InfoWindow(
          title: 'My Curretnt Position'
        )),
           Marker(
        markerId: MarkerId('2'),
        position: LatLng(24.917177932389563, 67.0628642990309),
        infoWindow: InfoWindow(
          title: 'Jawan Pakistan'
        )),
               Marker(
        markerId: MarkerId('3'),
        position: LatLng(24.927094442561472, 67.06503936966268),
        infoWindow: InfoWindow(
          title: 'Dhamthal Sweets'
        )),
        
  ];
  void initState(){
    super.initState();
    _marker.addAll(_list);
  
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(_marker),
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
