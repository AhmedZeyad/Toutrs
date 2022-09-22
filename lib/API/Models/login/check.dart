
import 'dart:convert';


List<Checkpass> checkpassFromJson(String str) => List<Checkpass>.from(json.decode(str).map((x) => Checkpass.fromJson(x)));

String checkpassToJson(List<Checkpass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Checkpass {
  Checkpass({
    required this.password,
  });

  String password;

  factory Checkpass.fromJson(Map<String, dynamic> json) => Checkpass(
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "password": password,
  };
}
