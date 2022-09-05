import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class polyLineScreen extends StatefulWidget {
  const polyLineScreen({super.key});

  @override
  State<polyLineScreen> createState() => _polyLineScreenState();
}

class _polyLineScreenState extends State<polyLineScreen> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(37.42796133580664, 15));

  final Set<Marker> _markers = {};
  final Set<Polyline> _polyLine = {};

  List<LatLng> latLng = [
    LatLng(33.738045, 73.884488),
     LatLng(33.6941,729734),
    LatLng(33.567997728, 73.6359974456),
    LatLng(33.567997728, 73.6359974456)
  ];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < latLng.length; i++) {
      _markers.add(Marker(
        markerId: MarkerId(
          i.toString(),
        ),
        position: latLng[i],
        infoWindow:
            InfoWindow(title: 'Really Cool Place', snippet: '5 Star Rating'),
        icon: BitmapDescriptor.defaultMarker,
      ));
      setState(() {});
      _polyLine.add(Polyline(polylineId: PolylineId('1'), 
      points: latLng,
      color: Colors.orange));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PolyLine'),
        ),
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _kGooglePlex,
              markers: _markers,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polylines: _polyLine,
              myLocationEnabled: true,
              mapType: MapType.normal,
            ),

            // GoogleMap(
            //       markers: _markers,
            //       onMapCreated: (GoogleMapController controller) {
            //         _controller.complete(controller);
            //       }),
            // ),
            // myLocationEnabled: true,
            // initialCameraPosition: _kGooglePlex,
            // mapType: MapType.normal,
          ],
        ));
  }
}
