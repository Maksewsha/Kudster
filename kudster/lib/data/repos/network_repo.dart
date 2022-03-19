import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kudster/data/models/event_full_model/event_full_model.dart';

class NetworkRepository{
  static Future getEvents(){
    return http.get(Uri.parse("https://kudago.com/public-api/v1.3/events/125721/"));
  }
}