
import 'dart:convert';

List<AllRes> allResFromJson(String str) => List<AllRes>.from(json.decode(str).map((x) => AllRes.fromJson(x)));

String allResToJson(List<AllRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllRes {
  AllRes({
    required this.id,
    required this.resN,
    required this.caption,
    required this.category,
    required this.resImage,
    required this.resLocat,
    required this.meals,
    required this.ratingComnt,

  });

  int id;
  String resN;
  String caption;
  String category;
  String resImage;
  String resLocat;
  String meals;
  String ratingComnt;

  factory AllRes.fromJson(Map<String, dynamic> json) => AllRes(
    id: json["id"],
    resN: json["Res_N"],
    caption: json["caption"],
    category: json["category"],
    resImage: json["Res_Image"],
    resLocat: json["res_locat"],
    meals: json["Meals"],
    ratingComnt: json["Rating_Comnt"],

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Res_N": resN,
    "caption": caption,
    "category": category,
    "Res_Image": resImage,
    "res_locat": resLocat,
    "Meals": meals,
    "Rating_Comnt": ratingComnt,
  };
}
