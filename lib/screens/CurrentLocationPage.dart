// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lava/views/constantsClolor.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentLocationPage extends StatefulWidget {
  CurrentLocationPage({super.key});

  @override
  State<CurrentLocationPage> createState() => _CurrentLocationPageState();
}

class _CurrentLocationPageState extends State<CurrentLocationPage> {
  String result = '';

  String lat = '';

  String lng = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        title: Text('location'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getMapButton(),
            SizedBox(
              height: 20,
            ),
            _getLocationButton(),
            displayLocation()
          ],
        ),
      ),
    );
  }

  Widget _getMapButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(300, 50), backgroundColor: WhiteColor),
        onPressed: () {
          gotoMap();
        },
        child: Text(
          "Goto Google Map",
          style: TextStyle(fontSize: 20, color: BlueColor),
        ));
  }

  Widget _getLocationButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(300, 50), backgroundColor: WhiteColor),
        onPressed: () {
          getUserLocation();
        },
        child: Text(
          "Get Location",
          style: TextStyle(fontSize: 20, color: BlueColor),
        ));
  }

  // check if location  permision is enable
  Future<bool> checkPermision() async {
    bool isEnable = false;

    LocationPermission permission;

    //check if location is enable
    isEnable = await Geolocator.isLocationServiceEnabled();
    if (!isEnable) {
      return false;
    }

    // check if use allow location permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // if permission is denied then request user to allow locaton again
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // if permission denied again
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  // get user current location
  getUserLocation() async {
    var isEnable = await checkPermision();
    if (isEnable) {
      Position location = await Geolocator.getCurrentPosition();
      setState(() {
        lat = location.altitude.toString();
        lng = location.altitude.toString();
      });
    } else {
      setState(() {
        result = 'permission isn\'t allow';
      });
    }
  }

  Widget displayLocation() {
    return Column(
      children: [
        Text(
          result,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          lat,
          style: TextStyle(
            fontSize: 30,
            color: GreyColor,
          ),
        ),
        Text(
          lng,
          style: TextStyle(fontSize: 30, color: GreyColor),
        ),
      ],
    );
  }

  gotoMap() {
    try {
      var url =
          "https://www.google.com/maps/dir/?api=1&destination=11.6021526,104.9112173";
      final Uri _url = Uri.parse(url);

      launchUrl(_url);
    } catch (_) {
      print("Error launch Map");
    }
  }
}
