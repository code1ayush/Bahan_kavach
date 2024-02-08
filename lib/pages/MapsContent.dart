import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsContent extends StatefulWidget {
  const MapsContent({super.key});

  @override
  State<MapsContent> createState() => _MapsContentState();
}

class _MapsContentState extends State<MapsContent> {
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _pGooglePlex, zoom: 13),
      ),
    );
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