import 'package:geolocator/geolocator.dart';
import 'package:clima_weather_app/screens/loading_screens.dart';

class Location {
  late double latitude;
  late double longitude;

  getCurrentLocation() {}
}

Future<void> getCurrentLocation() async {
  try {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    var latitude = position.latitude;
    var longitude = position.longitude;

    print(position);
  } catch (e) {
    print(e);
  }
}
