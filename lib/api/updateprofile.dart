import 'dart:convert';
import 'dart:io';
import 'package:cric8hemant/const/const.dart';
import 'package:http/http.dart' as http;

class Upadteprofileapi {
  Future<dynamic> doUploadProfile(File file, String astro_id) async {
    var client = http.Client();
    try {
      var request = http.MultipartRequest(
          "POST", Uri.parse("${baseUrl}api/Users/get_image"));
      //add text fields Uri.parse("http://192.168.29.30:8000/ajaxFile.php")
      request.fields["user_id"] = "$astro_id";
      //create multipart using filepath, string or bytes
      var pic = await http.MultipartFile.fromPath("user_image", file.path);
      //add multipart to request
      request.files.add(pic);
      var response = await request.send();

      //Get the response from the server
      var responseData = await response.stream.toBytes();
      String responseString = String.fromCharCodes(responseData);
      print(responseString);
      return jsonDecode(responseString) as Map;
    } catch (e) {
      print(e);
      throw e;
    } finally {
      client.close();
    }
  }

  // Future<dynamic> doupdatedetail({
  //   String id = "",
  //   String email = "",
  //   String phone = "",
  //   String name = "",
  // }) async {
  //   var client = http.Client();
  //   try {
  //     final response = await client.post(
  //         Uri.parse("${baseUrl}api/app/next/update-profile-detail.php"),
  //         body: {
  //           'shop_name': email,
  //           'name': name,
  //           'phone': phone,
  //           'user_id': id,
  //         });
  //     if (response.statusCode == 200) {
  //       print(response.body);
  //       return jsonDecode(response.body) as Map;
  //     } else {
  //       print('Request failed with status: ${response.statusCode}.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   } finally {
  //     client.close();
  //   }
  // }
}
