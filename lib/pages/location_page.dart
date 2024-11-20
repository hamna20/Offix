// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';

// class LocationPage extends StatefulWidget {
//   @override
//   _LocationPageState createState() => _LocationPageState();
// }

// class _LocationPageState extends State<LocationPage> {
//   late GoogleMapController _mapController;
//   final LatLng _initialPosition = const LatLng(20.5937, 78.9629);

//   @override
//   void initState() {
//     super.initState();
//     _requestLocationPermission();
//   }

//   // Request location permission
//   Future<void> _requestLocationPermission() async {
//     PermissionStatus status = await Permission.location.request();
//     if (status.isGranted) {
//       print("Location permission granted");
//     } else {
//       print("Location permission denied");
//       // You can show a dialog or handle the denied state here
//     }
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     _mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Travel Page'),
//           backgroundColor: Colors.purple,
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//             target: _initialPosition,
//             zoom: 5.0,
//           ),
//           markers: {
//             Marker(
//               markerId: MarkerId('initial_position'),
//               position: _initialPosition,
//               infoWindow: InfoWindow(
//                 title: 'Initial Location',
//                 snippet: 'Center of the Map',
//               ),
//             ),
//           },
//         ),
//       ),
//     );
//   }
// }
