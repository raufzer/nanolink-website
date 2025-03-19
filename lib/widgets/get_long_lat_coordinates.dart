import 'package:geolocator/geolocator.dart';

Future<String> getLongLatCoords() async {
  await Geolocator.checkPermission();
  await Geolocator.requestPermission();
  Position position = await Geolocator.getCurrentPosition();
  return position.toString();
  
}
