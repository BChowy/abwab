import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_map/flutter_map.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //     child: new MapboxOverlay(
        // controller: new MapboxOverlayController(),
        // options: new MapboxMapOptions(
        //   camera: new CameraPosition(
        //     target: LatLng(lat: 52.376316, lng: 4.897801),
        //     zoom: 15.0,
        //     bearing: 0.0,
        //     tilt: 0.0),
        //   ),
        // )

        );
  }
}
