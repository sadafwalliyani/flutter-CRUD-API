import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class polyLinesScreen extends StatefulWidget {
  const polyLinesScreen({super.key});

  @override
  State<polyLinesScreen> createState() => _polyLinesScreenState();
}

class _polyLinesScreenState extends State<polyLinesScreen> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(24.914397642573633, 67.05843111598043),
    zoom: 15,
  );

  final Set<Marker> _marker = {};
  final Set<Polyline> _polyLines = {};

  List<LatLng> latlng = [
    LatLng(24.925224439162132, 67.06023570507965),
    LatLng(24.91927060369278, 67.0540230839317),
    LatLng(24.914459192593707, 67.05183681620004),
    LatLng(24.891936513086016, 67.03817961966188),
    LatLng(24.94197355576045, 67.05988867740308)
  ];
  void initState() {
    super.initState();
    for (int i = 0; i < latlng.length; i++) {
      _marker.add(Marker(
        markerId: MarkerId(i.toString()),
        position: latlng[i],
        infoWindow:
            InfoWindow(title: 'Really Cool Place', snippet: '5 Star Rating'),
        icon: BitmapDescriptor.defaultMarker,
      ));
      setState(() {});
      _polyLines.add(Polyline(
        polylineId: PolylineId('1'),
        points: latlng,
        color: Colors.orange));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PolyLines'),
      ),
      body: GoogleMap(
        markers: _marker,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        polylines: _polyLines,
        myLocationEnabled: true,
        initialCameraPosition: _kGooglePlex,
        mapType: MapType.normal,
      ),
    );
  }
}
