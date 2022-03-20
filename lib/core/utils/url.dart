import 'package:url_launcher/url_launcher.dart';

class CustomLaunch {
  static Future url(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
