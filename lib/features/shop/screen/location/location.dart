import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: CameraPosition(target: LatLng(23.874658, 90.381376)),

      ),
    );
  }
}
