/* File to get location of user
* used dependencies - location => to get location coordinates of user,
*   - geoLocation => To get Address from the location coordinates
 */
import 'package:flutter/services.dart';
import 'package:geocoder/geocoder.dart';
import 'package:location/location.dart';
import 'dart:async';

class UserLocation {

  final Location _location = new Location();
  StreamSubscription<Map<String, double>> _locationSub;

  Address address;

  UserLocation() {
    _locationSub =
        _location.onLocationChanged().listen((loc) {
          var coords = new Coordinates(loc['latitude'], loc['longitude']);
          Geocoder.local.findAddressesFromCoordinates( coords ).then( (list) {
              if( list.isNotEmpty )
                address = list.first;
          }).catchError((e) {
            print('location: ${e}');
          });
        });
  }
}