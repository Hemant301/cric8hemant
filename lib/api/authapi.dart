import 'dart:convert';
import 'package:cric8hemant/const/const.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  Future<dynamic> doSignup({
    String name = "",
    String last_name = "",
    String mob_no = "",
    String email = "",
    String city = "",
    String pincode = "",
    String state = "",
    String username = "",
    String password = "",
  }) async {
    var client = http.Client();
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}cricweb/api/Users/user_signup"), body: {
        'name': name,
        'last_name': last_name,
        'mob_no': mob_no,
        'email': email,
        'city': city,
        'pincode': pincode,
        'state': state,
        'username': username,
        'password': password,
        'user_img': 'null',
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
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

  Future<dynamic> doLogin({
    String username = "",
    String password = "",
  }) async {
    var client = http.Client();
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}cricweb/api/Users/user_login"), body: {
        'username': username,
        'password': password,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
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
