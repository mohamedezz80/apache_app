
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class GoogleMaps3 extends StatefulWidget {
  const GoogleMaps3({Key key}) : super(key: key);

  @override
  State<GoogleMaps3> createState() => _GoogleMapsState();
}
class _GoogleMapsState extends State<GoogleMaps3> {
  // final Completer<GoogleMapController> _controller = Completer();

  var myMarkers = HashSet<Marker>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.05592314747825, 31.584548968080927),
    zoom: 19.4746,
  );

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        body: Stack(
          children:
          [
            GoogleMap(
              markers: myMarkers,
              initialCameraPosition: _kGooglePlex,
              zoomControlsEnabled: false,mapType: MapType.terrain,
              onMapCreated: (GoogleMapController googleMapController)
              {
                setState(() {
                  myMarkers.add(
                    const Marker(
                      markerId: MarkerId('1'),
                      position: LatLng(30.05592314747825, 31.584548968080927),
                      infoWindow: InfoWindow(
                        title: 'اباتشي للاستثمار والتنمية العمرانية',
                      ),
                    ),
                  );
                });
              },
              //   mapType: MapType.hybrid,
              // myLocationButtonEnabled: false,
            ),
          ],
        ),
      ),
    );
  }

// Future<void> goToTheLake() async {
//   final GoogleMapController controller = await _controller.future;
//   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
// }
}
