import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

class MapsContent extends StatefulWidget {
  const MapsContent({super.key});

  @override
  State<MapsContent> createState() => _MapsContentState();
}

class _MapsContentState extends State<MapsContent> {
  // static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      options: MapOptions(
        initialCenter: latLng.LatLng(22.253455, 84.9139524),
        initialZoom: 13,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          // userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: latLng.LatLng(22.253455, 84.9139524),
              child: Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 50.0,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}







// import 'package:flutter/material.dart';

// class MapsContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "There is only map content available",
//         style: TextStyle(fontSize: 21)
//       ),
//     );
//   }
// }