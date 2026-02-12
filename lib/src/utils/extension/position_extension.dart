import 'package:geolocator/geolocator.dart';

extension PositionExtension on Position {
  Map<String, double> latlonghead() {
    return {"latitude": latitude, "longitude": longitude, "heading": heading};
  }
}
