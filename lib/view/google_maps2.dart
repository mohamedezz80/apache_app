import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps2 extends StatefulWidget {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.961123836755842, 29.156341699888838),
    zoom: 19.4746,
  );

  const GoogleMaps2({Key key}) : super(key: key);

  @override
  State<GoogleMaps2> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps2> {

  var myMarkers = HashSet<Marker>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: Stack(
          children:
          [
            GoogleMap(
              markers: myMarkers,
              initialCameraPosition: GoogleMaps2._kGooglePlex,
              zoomControlsEnabled: false,mapType: MapType.terrain,
              onMapCreated: (GoogleMapController googleMapController)
              {

                myMarkers.add(
                  const Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(30.961123836755842, 29.156341699888838),
                    infoWindow: InfoWindow(
                      title: 'اباتشي للاستثمار والتنمية العمرانية',
                    ),
                  ),
                );
              },
              //   mapType: MapType.hybrid,
              // myLocationButtonEnabled: false,
            ),
          ],
        ),
      ),
    );
  }
}
