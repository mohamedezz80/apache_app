
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class GoogleMaps1 extends StatefulWidget {
  const GoogleMaps1({Key key}) : super(key: key);

  @override
  State<GoogleMaps1> createState() => _GoogleMapsState();
}
class _GoogleMapsState extends State<GoogleMaps1> {
 // final Completer<GoogleMapController> _controller = Completer();

  var myMarkers = HashSet<Marker>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(29.97560441931587, 31.23482477331727),
    zoom: 17.4746,
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
              zoomControlsEnabled: false,
              //mapType: MapType.terrain,
              onMapCreated: (GoogleMapController googleMapController)
              {
                setState(() {
                  myMarkers.add(
                    const Marker(
                        markerId: MarkerId('1'),
                      position: LatLng(29.97560441931587, 31.23482477331727),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: ()
                        {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: const Icon(
                          Icons.close,
                        ),
                    ),
                    const Spacer(),
                    const Text("اباتشي للاستثمار والتنمية العمرانية"),
                    const SizedBox(
                      width: 8.0,
                    )
                  ],
                ),
              ),
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
