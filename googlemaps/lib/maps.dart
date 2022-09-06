import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class maps extends StatefulWidget {
  const maps({Key? key}) : super(key: key);

  @override
  State<maps> createState() => _mapsState();
}

class _mapsState extends State<maps> {
  //step-1 google map fun
  static const double _defaultLat = 8.85577417427599;
  static const double _defaultLng = 38.81151398296511;
  static const CameraPosition _defaultLocation = 
  CameraPosition(target: LatLng(_defaultLat,_defaultLng,),zoom: 15);
 
 //stap-2 
 MapType _currentMapType = MapType.normal;
  void _changeMapType() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
  late final GoogleMapController _googleMapController;
  //step-3 marker
final Set<Marker> _markers = {};
  void _addMarker() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('defaultLocation'),
          position: _defaultLocation.target,
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
    const _defaultPosition = LatLng(_defaultLat, _defaultLng);
    _googleMapController
        .animateCamera(CameraUpdate.newLatLngZoom(_defaultPosition, 15));
    setState(() {
      const marker = Marker(
          markerId: MarkerId('My Default Location'),
          position: _defaultPosition,
          infoWindow: InfoWindow(title: 'home', snippet: 'The Best Place'));
      _markers
        ..clear()
        ..add(marker);
    });
  }

  // static final Polyline _polyline = Polyline(
  //   polylineId: PolylineId('_polyline'),
  //   points: [
  //     LatLng(37.42796133580664, -122.085749655962),
  //     LatLng(37.42796133580664, -122.085749655962),
  //   ],
  //   width: 5,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GoogleMaps"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            GoogleMap(
                onMapCreated: (controller) => _googleMapController,
                initialCameraPosition: _defaultLocation,
                mapType: _currentMapType),
            Container(
              height: 250,
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
            )
          ],
        ));
  }
}
