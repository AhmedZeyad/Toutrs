
import 'dart:convert';


List<UserInfo> userInfoFromJson(String str) => List<UserInfo>.from(json.decode(str).map((x) => UserInfo.fromJson(x)));

String userInfoToJson(List<UserInfo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserInfo {
  UserInfo({
    required this.id,
    required this.userName,
    required this.nickname,
    required this.dateOfBirth,
    required this.email,
    required this.mone,
    required this.phonNymber,
    required this.point,
  });

  int id;
  String userName;
  String nickname;
  DateTime dateOfBirth;
  String email;
  int mone;
  String phonNymber;
  int point;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    id: json["id"],
    userName: json["user_name"],
    nickname: json["Nickname"],
    dateOfBirth: DateTime.parse(json["DateOfBirth"]),
    email: json["Email"],
    mone: json["mone"],
    phonNymber: json["PhonNymber"],
    point: json["Point"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_name": userName,
    "Nickname": nickname,
    "DateOfBirth": dateOfBirth.toIso8601String(),
    "Email": email,
    "mone": mone,
    "PhonNymber": phonNymber,
    "Point": point,
  };
}
