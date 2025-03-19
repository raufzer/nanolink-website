// import 'package:geocoding/geocoding.dart';

// Future<String> getPlacemarks(double lat, double long) async {
//   try {
//     List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);

//     var address = '';

//     if (placemarks.isNotEmpty) {

//       // Concatenate non-null components of the address
//       var streets = placemarks.reversed
//           .map((placemark) => placemark.street)
//           .where((street) => street != null);

//       // Filter out unwanted parts
//       streets = streets.where((street) =>
//           street!.toLowerCase() !=
//           placemarks.reversed.last.locality!
//               .toLowerCase()); // Remove city names
//       streets =
//           streets.where((street) => !street!.contains('+')); // Remove street codes

//       address += streets.join(', ');

//       address += ', ${placemarks.reversed.last.subLocality ?? ''}';
//       address += ', ${placemarks.reversed.last.locality ?? ''}';
//       address += ', ${placemarks.reversed.last.subAdministrativeArea ?? ''}';
//       address += ', ${placemarks.reversed.last.administrativeArea ?? ''}';
//       address += ', ${placemarks.reversed.last.postalCode ?? ''}';
//       address += ', ${placemarks.reversed.last.country ?? ''}';
//     }
//     return address;
//   } catch (e) {
//     return "No Address";
//   }
// }

import 'package:geocoding/geocoding.dart';

Future<String> getCityName(double lat, double long) async {
  try {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);

    if (placemarks.isNotEmpty) {
      // Extract the city name directly
      String city = placemarks.reversed.last.locality ?? '';
      return city;
    } else {
      return "No City Found";
    }
  } catch (e) {
    return "Error: $e";
  }
}