import 'package:http/http.dart';

class Network {
  Network._instantiate();
  static final Network instance = Network._instantiate();

  static String BASE = "jsonplaceholder.typicode.com";
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8'
  };

  // http APIs
  static String API_GET = "/posts";
  static String API_CREATE = "/posts";
  static String API_UPDATE = "/posts/"; // id
  static String API_DELETE = "/posts/"; // id

// request/query - so'rov
// response - javob

// Http requests

  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params);
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  // Http params
  static Map<String, String> paramsEmpty() {
    Map<String, String> params = new Map();
    return params;
  }
}
