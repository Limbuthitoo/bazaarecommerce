import 'dart:convert';
import 'dart:io';

import 'package:bazaar/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BazarService {
  static var client = http.Client();
  static var baseUrl = "http://192.168.2.117:3000";
// Registering Users
  static Future registerUser(Map mapData) async {
    try {
      var response = await client.post(Uri.parse("$baseUrl/users"),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },
          body: jsonEncode(mapData));
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
  }

  // Fetching Users list

  static Future<List<BazaarUserModel>?> fetchUser() async {
    try {
      var response = await client.get(
        Uri.parse("$baseUrl/users"),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
      );
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return bazaarUserModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
    return null;
  }
}
