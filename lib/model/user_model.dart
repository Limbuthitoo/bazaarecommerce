// To parse required this JSON data, do
//
//     final bazaarUserModel = bazaarUserModelFromJson(jsonString);

import 'dart:convert';

List<BazaarUserModel> bazaarUserModelFromJson(String str) =>
    List<BazaarUserModel>.from(
        json.decode(str).map((x) => BazaarUserModel.fromJson(x)));

String bazaarUserModelToJson(List<BazaarUserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BazaarUserModel {
  BazaarUserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
  });

  int id;
  String fullName;
  String email;
  String password;

  factory BazaarUserModel.fromJson(Map<String, dynamic> json) =>
      BazaarUserModel(
        id: json["id"],
        fullName: json["fullName"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "email": email,
        "password": password,
      };
}
