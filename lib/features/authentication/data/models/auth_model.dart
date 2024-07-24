import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  final String username;
  final String accessToken;

  AuthModel({
    required this.username,
    required this.accessToken,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        username: json["username"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "access_token": accessToken,
      };
}
