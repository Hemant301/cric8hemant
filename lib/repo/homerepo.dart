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

  Future<SlotModal> fetchslot({String date = ""}) async {
    final response = await homeApi.fetchslot(date: date);
    var jsonResponse = jsonDecode(response.body) as Map;
    return SlotModal(jsonResponse);
  }

  Future<UserdetailModal> getuserData() async {
    final response = await homeApi.getuserData();
    var jsonResponse = jsonDecode(response.body) as Map;
    return UserdetailModal(jsonResponse);
  }

  Future<CityModal> getCityname() async {
    final response = await homeApi.getCityname();
    var jsonResponse = jsonDecode(response.body) as Map;
    return CityModal(jsonResponse);
  }

  Future<WalletdetailModal> fetchWallet() async {
    final response = await homeApi.fetchWallet();
    var jsonResponse = jsonDecode(response.body) as Map;
    return WalletdetailModal(jsonResponse);
  }

  Future<TicketModal> fetchTicket(id) async {
    final response = await homeApi.fetchTicket(id);
    var jsonResponse = jsonDecode(response.body) as Map;
    return TicketModal(jsonResponse);
  }

  Future<AllticketModal> fetchallTicket() async {
    final response = await homeApi.fetchallTicket();
    var jsonResponse = jsonDecode(response.body) as Map;
    return AllticketModal(jsonResponse);
  }
}
