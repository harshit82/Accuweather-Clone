import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  Future<Position> getCurrentLocation() async {
    Position position = _handleLocationPermission() as Position;
    return position;
  }

  Future<Position> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Location services are disabled. Please enable the services');
      Fluttertoast.showToast(
          msg: "Location services are disabled. Please enable the services");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied');
        Fluttertoast.showToast(msg: "Location permissions are denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      print(
          'Location permissions are permanently denied, we cannot request permissions.');
      Fluttertoast.showToast(
          msg:
              "Location permissions are permanently denied, we cannot request permissions.");
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
  }
}
