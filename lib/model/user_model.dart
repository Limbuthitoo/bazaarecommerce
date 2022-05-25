// To parse required this JSON data, do
//
//     final bazaarUser = bazaarUserFromJson(jsonString);

import 'dart:convert';

List<BazaarUser> bazaarUserFromJson(String str) =>
    List<BazaarUser>.from(json.decode(str).map((x) => BazaarUser.fromJson(x)));

String bazaarUserToJson(List<BazaarUser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BazaarUser {
  BazaarUser({
    required this.id,
    required this.fullName,
    required this.password,
    required this.email,
  });

  int id;
  String fullName;
  String password;
  String email;

  factory BazaarUser.fromJson(Map<String, dynamic> json) => BazaarUser(
        id: json["id"],
        fullName: json["fullName"],
        password: json["password"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "password": password,
        "email": email,
      };
}
