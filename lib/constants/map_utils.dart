import 'package:url_launcher/url_launcher.dart';

class MapUltis {
  MapUltis._();

  static Future<void> openMap(
      double lat, double long, double lat1, double long1) async {
    // String googlemapURL =
    //     "https://www.google.com/maps/search/?api=1&query=$lat,$long";
    String googlemapURL =
        'https://www.google.com/maps/dir/?api=1&origin=$lat,$long&destination=$lat1,$long1&travelmode=driving&dir_action=navigate';
    // ignore: deprecated_member_use
    if (await canLaunch(googlemapURL)) {
      // ignore: deprecated_member_use
      await launch(googlemapURL);
      print('___ GET MAP $googlemapURL _____');
    }
  }
}
