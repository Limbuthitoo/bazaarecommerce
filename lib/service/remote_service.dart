import 'dart:convert';
import 'dart:io';

import 'package:bazaar/model/user_model.dart';
import 'package:bazaar/utili/appColor.dart';
import 'package:bazaar/view/homepage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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

  static Future login(String email, String password) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      var response = await client.get(
        Uri.parse("$baseUrl/users?email=$email&password=$password"),
      );
      var jsonData = jsonDecode(response.body);
      print(jsonData);
      if (jsonData.length > 0) {
        //login
        preferences.setString("id", jsonData[0]["id"].toString());
        preferences.setString("username", jsonData[0]["id"].toString());
        preferences.setString("email", jsonData[0]["id"].toString());
        Get.off(() => const HomeView());
      } else {
        Get.snackbar("Error", "Invalid email or password",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: AppColor.kPrimary,
            colorText: AppColor.kLight);
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
    return null;
  }
}
