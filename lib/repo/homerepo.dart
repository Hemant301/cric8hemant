import 'dart:convert';
import '../modal/homemodal.dart';

import 'package:cric8hemant/auth/homeapi.dart';

class HomeRepo {
  HomeApi homeApi = HomeApi();
  Future<VenueModal> fetchVenue() async {
    final response = await homeApi.fetchVenue();
    var jsonResponse = jsonDecode(response.body) as Map;
    return VenueModal(jsonResponse);
  }
}
