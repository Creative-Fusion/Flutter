// import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      //shouldgreaterthan10(12);
      //await is only applicable for things that return Future
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

/* void shouldgreaterthan10(int n) {
  if(n>10){
    throw 'Error';
  }
} */
