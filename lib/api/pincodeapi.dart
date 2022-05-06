import 'dart:convert';
import 'package:cric8hemant/const/const.dart';
import 'package:http/http.dart' as http;
// import 'package:krayvikray/util/consts.dart';

class PincodeApi {
  Future<dynamic> getPincodes() async {
    var client = http.Client();
    try {
      final response =
          await client.get(Uri.parse("${baseUrl}ajax/service-pincode.php"));
      if (response.statusCode == 200) {
        //print(response.body);
        return jsonDecode(response.body);
      } else {
        throw "Interenet Missing";
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
      throw "Interenet Missing";
    } finally {
      client.close();
    }
  }
}
