import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_mama/screens/profile/otherUserProfile.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/*
This is the chat screen, where the conversation with another user is visible and
can be continued.
*/

class Our_Map extends StatefulWidget {
  @override
  _Map createState() => _Map();
}

class _Map extends State<Our_Map> {
  @override
  void initState() {
    super.initState();
  }

  static final CameraPosition _frankfurt = CameraPosition(
    target: LatLng(50.0932933, 8.6664642),
    zoom: 10.0,
  );

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
    _createMarkerImageFromAsset(context);
    List<Marker> mMarkers = [];
    var collection = FirebaseFirestore.instance.collection('Users');
    var querySnapshot = await collection.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      Map<String, dynamic> data = queryDocumentSnapshot.data();
      GeoPoint geoLocation = data['GeoLocation'];

      int id = 0;
      int locationIndex = 1;
      double incrementValue = 0.0002;
      LatLng location = LatLng(geoLocation.latitude, geoLocation.longitude);

      for (var marker in mMarkers) {
        if (marker.position == location) {
          switch (locationIndex % 4) {
            case 0:
              {
                location = LatLng(geoLocation.latitude + incrementValue,
                    geoLocation.longitude);
                break;
              }
            case 1:
              {
                location = LatLng(geoLocation.latitude,
                    geoLocation.longitude + incrementValue);
                break;
              }
            case 2:
              {
                location = LatLng(geoLocation.latitude - incrementValue,
                    geoLocation.longitude);
                break;
              }
            case 3:
              {
                location = LatLng(geoLocation.latitude,
                    geoLocation.longitude - incrementValue);
                incrementValue += 0.0002;
                break;
              }
          }
          locationIndex++;
        }
      }

      mMarkers.add(Marker(
              markerId: MarkerId(queryDocumentSnapshot.id.toString()),
              position: location,
              icon: _markerIcon,
              infoWindow: InfoWindow(
                title: data['Vorname'] + " " + data["Nachname"],
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OtherUserProfile(
                            userUID: queryDocumentSnapshot.id.toString(),
                          )));
                },
              )) // Marker
          );
      id++;
    }
    return mMarkers.toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
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
                  initialCameraPosition: _frankfurt,
                  markers: snapShot.data,
                  onMapCreated: (GoogleMapController controller) {
                    controller.setMapStyle(
                        '[{"elementType":"geometry","stylers":[{"color":"#242f3e"}]},{"elementType":"labels.text.fill","stylers":[{"color":"#746855"}]},{"elementType":"labels.text.stroke","stylers":[{"color":"#242f3e"}]},{"featureType":"administrative.locality","elementType":"labels.text.fill","stylers":[{"color":"#d59563"}]},{"featureType":"poi","elementType":"labels.text.fill","stylers":[{"color":"#d59563"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#263c3f"}]},{"featureType":"poi.park","elementType":"labels.text.fill","stylers":[{"color":"#6b9a76"}]},{"featureType":"road","elementType":"geometry","stylers":[{"color":"#38414e"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#212a37"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#9ca5b3"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#746855"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#1f2835"}]},{"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#f3d19c"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#2f3948"}]},{"featureType":"transit.station","elementType":"labels.text.fill","stylers":[{"color":"#d59563"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#17263c"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#515c6d"}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"color":"#17263c"}]}]');
                  },
                );

                break;
            }
            return Container();
          },
          future: _createMarkers(context)),
    );
  }

  _loading() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
