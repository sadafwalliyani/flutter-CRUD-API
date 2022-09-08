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
        infoWindow: InfoWindow(title: 'My Curretnt Position')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(24.917177932389563, 67.0628642990309),
        infoWindow: InfoWindow(title: 'Jawan Pakistan')),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(24.927094442561472, 67.06503936966268),
        infoWindow: InfoWindow(title: 'Dhamthal Sweets')),
  ];
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

   MapType _currentMapType = MapType.normal;
  void _changeMapType() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
  late final GoogleMapController _googleMapController;

  final Set<Marker> _markers = {};
  void _addMarker() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('defaultLocation'),
          position: _kGooglePlex .target,
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: 'Really cool place',
            snippet: '5 Start Ratting',
          )));
    });
  }
//step-3 move location
Future<void> _moveToNewLocation() async {
    const _newPosition = LatLng(40.7128, -74.0060);
    _googleMapController
        .animateCamera(CameraUpdate.newLatLngZoom(_newPosition, 15));
    setState(() {
      const marker = Marker(
          markerId: MarkerId('newLocation'),
          position: _newPosition,
          infoWindow: InfoWindow(
            title: 'New York',
            snippet: 'The Best Palce',
          ));
      _markers
        ..clear()
        ..add(marker);
    });
  }
   Future _gotToDefaultLocation() async {
    const _defaultPosition = LatLng(24.927094442561472, 67.06503936966268);
    _googleMapController
        .animateCamera(CameraUpdate.newLatLngZoom(_defaultPosition, 15));
    setState(() {
      const marker = Marker(
          markerId: MarkerId('My Default Location'),
          position: LatLng(24.927094442561472, 67.06503936966268),
          
          infoWindow: InfoWindow(title: 'home', snippet: 'The Best Place'));
      _markers
        ..clear()
        ..add(marker);
    });
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
          Container(
            // height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: _changeMapType,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.map,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  onPressed: _addMarker,
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(
                    Icons.add_location,
                    size: 36,
                  ),
                ),
                FloatingActionButton(
                  onPressed: _moveToNewLocation,
                  backgroundColor: Colors.indigoAccent,
                  child: Icon(
                    Icons.location_city,
                    size: 36,
                  ),
                ),
                FloatingActionButton(
                  onPressed: _gotToDefaultLocation,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.home_rounded,
                    size: 36,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
