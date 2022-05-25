import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BazarService {
  static var client = http.Client();
  static var baseUrl = "http://192.168.2.117:3000";

  static Future registerUser(Map mapData) async {
    try {
      var response = await client.post(Uri.parse("$baseUrl/user"),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },
          body: jsonEncode(mapData));
      print(response.statusCode);
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
  }
}
