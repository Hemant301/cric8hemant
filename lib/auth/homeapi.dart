import 'dart:convert';

import 'package:cric8hemant/const/const.dart';
import 'package:http/http.dart' as http;

class HomeApi {
  var client = http.Client();
  Future<dynamic> fetchVenue() async {
    try {
      final response =
          await client.get(Uri.parse("${baseUrl}api/Venue/venue_list"));
      if (response.statusCode == 200) {
        print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }
}
