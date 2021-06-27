import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

/*
This is the chat screen, where the conversation with another user is visible and
can be continued.
*/

class Map extends StatefulWidget {
  @override
  _Map createState() => _Map();
}

class _Map extends State<Map> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(50.130121, 8.692542),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  BitmapDescriptor _markerIcon;

  Future<void> _createMarkerImageFromAsset(BuildContext context) async {
    if (_markerIcon == null) {
      final ImageConfiguration imageConfiguration =
          createLocalImageConfiguration(context);
      BitmapDescriptor.fromAssetImage(imageConfiguration, 'images/marker.png')
          .then(_updateBitmap);
    }
  }

  void _updateBitmap(BitmapDescriptor bitmap) {
    if (this.mounted) {
      setState(() {
        _markerIcon = bitmap;
      });
    }
  }

  Future<Set<Marker>> _createMarkers(BuildContext context) async {
    List<Marker> mMarkers = [];
    _createMarkerImageFromAsset(context);
    mMarkers.add(Marker(
            markerId: MarkerId("1"),
            position: LatLng(50.130121, 8.692542),
            icon: _markerIcon,
            onTap: () {},
            infoWindow: InfoWindow(
              title: 'Sarah',
            )) // Marker
        );
    mMarkers.add(Marker(
            markerId: MarkerId("2"),
            position: LatLng(50.150121, 8.752542),
            icon: _markerIcon,
            infoWindow: InfoWindow(
              title: 'Jasimen',
            )) // Marker
        );

    return mMarkers.toSet();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var completer = Completer;
    return Scaffold(
      body: FutureBuilder(
          future: _createMarkers(context),
          builder: (BuildContext context, AsyncSnapshot snapShot) {
            switch (snapShot.connectionState) {
              case ConnectionState.none:
                return Text('Error');
                break;
              case ConnectionState.waiting:
                return _loading();
                break;
              case ConnectionState.active:
                return _loading();
                break;
              case ConnectionState.done:
                return GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  markers: snapShot.data,
                );
                break;
            }
            return Container();
          }),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  _loading() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
