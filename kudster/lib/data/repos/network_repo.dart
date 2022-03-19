import 'package:http/http.dart' as http;

class NetworkRepository {
  static Future getEvents() {
    return http
        .get(Uri.parse("https://kudago.com/public-api/v1.3/events/93870/"));
  }
}
