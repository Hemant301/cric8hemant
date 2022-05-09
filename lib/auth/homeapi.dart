import 'dart:convert';

import 'package:cric8hemant/const/const.dart';
import 'package:cric8hemant/const/user_cred.dart';
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

  Future<dynamic> fetchslot({String date = ""}) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}api/Users/get_slot_booking"),
          body: {'venue_start_date': date});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> getuserData() async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}api/Users/user_details"),
          body: {'user_id': userCred.getUserId()});
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

  Future<dynamic> getCityname() async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}api/Users/get_location"),
          body: {'user_id': userCred.getUserId()});
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

  Future<dynamic> fetchWallet() async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}api/Users/referal"),
          body: {'user_id': userCred.getUserId()});
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

  Future<dynamic> forgotPass(String phone) async {
    var client = http.Client();
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}api/Users/forgotpassword"), body: {
        'mobile': phone,
      });
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }

  Future<dynamic> verifyOtp(String phone, String otp) async {
    var client = http.Client();
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}api/Users/verify_otp"),
          body: {'mobile': phone, 'otp': otp});
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }

  Future<dynamic> resetpassword(String phone, String password) async {
    var client = http.Client();
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}api/Users/reset_password"),
          body: {'mobile': phone, 'password': password});
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }

  Future<dynamic> confirmBooking(
      {String date = "", List? slot_id, String payid = ""}) async {
    String demo = slot_id.toString().substring(1);
    String slotMain = demo.substring(0, demo.length - 1);
    print(slotMain);
    var client = http.Client();
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}api/Users/slot_booking"), body: {
        'venue_start_date': date,
        'slot_id': slotMain,
        'user_id': userCred.getUserId(),
        'razorpay_id': payid
      });
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }

  Future<dynamic> updateProfile(
      {String name = "",
      String last_name = "",
      String city = "",
      String pincode = "",
      String state = ""}) async {
    var client = http.Client();
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}api/Users/update_profile"), body: {
        'name': name,
        'last_name': last_name,
        'city': city,
        'pincode': pincode,
        'state': state,
        'user_id': userCred.getUserId()
      });
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }
}

final homeApi = HomeApi();
