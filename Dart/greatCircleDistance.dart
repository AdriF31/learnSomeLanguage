import "dart:math";

void main() {
  double lat1 = -6.792275381134657;
  double lon1 = 108.38572013887911;
  double lat2 = -6.792192617230363;
  double lon2 = 108.38616691317361;
  double haversine = GreatCircleDistance.haversine(lat1, lon1, lat2, lon2);

  print("jarak haversine = ${haversine} km");

  double sloc = GreatCircleDistance.Sloc(lat1, lon1, lat2, lon2);
  print("jarak sloc = ${sloc} km");
}

class GreatCircleDistance {
  //ubah koordinat ke dalam bentuk radian
  static double _degreesToRadians(degrees) {
    return degrees * pi / 180;
  }

//perhitungan dengan haversine formula
  static double haversine(lat1, lon1, lat2, lon2) {
    var earthRadiusKm = 6371;

    var dLat = _degreesToRadians(lat2 - lat1);
    var dLon = _degreesToRadians(lon2 - lon1);

    lat1 = _degreesToRadians(lat1);
    lat2 = _degreesToRadians(lat2);

    var a = sin(dLat / 2) * sin(dLat / 2) +
        sin(dLon / 2) * sin(dLon / 2) * cos(lat1) * cos(lat2);
    var c = 2 * atan2(sqrt(a), sqrt(1 - a));
    var distance = earthRadiusKm * c;
    return distance;
  }

//perhitungan dengan spherical law of cosines
  static double Sloc(lat1, lon1, lat2, lon2) {
    var earthRadiusKm = 6371;

    var dlat1 = _degreesToRadians(lat1);
    var dlon1 = _degreesToRadians(lon1);
    var dlat2 = _degreesToRadians(lat2);
    var dlon2 = _degreesToRadians(lon2);

    var distance = acos(sin(dlat1) * sin(dlat2) +
            cos(dlat1) * cos(dlat2) * cos(dlon2 - dlon1)) *
        earthRadiusKm;
    return distance;
  }
}
