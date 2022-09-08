import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  late GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(
      target: LatLng(24.914397642573633, 67.05843111598043), zoom: 14);

  Set<Marker> markers = {};


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User current location"),
        centerTitle: true,
      ),
      body: GoogleMap(
        
    

        initialCameraPosition: initialCameraPosition,
        markers: Set<Marker>.of(_marker),
        mapType: MapType.normal,
        
        myLocationEnabled: true,
        compassEnabled: false,
        
onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          Position position = await _determinePosition();

          googleMapController.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(position.latitude, position.longitude),
                  zoom: 14)));

          markers.clear();

          markers.add(Marker(
              markerId: const MarkerId('currentLocation'),
              position: LatLng(position.latitude, position.longitude)));

          setState(() {});
        },
        label: const Text("Current Location"),
        icon: const Icon(Icons.location_history),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}
