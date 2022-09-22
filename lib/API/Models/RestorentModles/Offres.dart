

import 'dart:convert';

List<Offres> offresFromJson(String str) => List<Offres>.from(json.decode(str).map((x) => Offres.fromJson(x)));

String offresToJson(List<Offres> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Offres {
  Offres({
    required this.id,
    required this.image,
    required this.resN,
    required this.caption,
    required this.cost,
  });

  int id;
  String image;
  String resN;
  String caption;
  int cost;

  factory Offres.fromJson(Map<String, dynamic> json) => Offres(
    id: json["id"],
    image: json["image"],
    resN: json["Res_N"],
    caption: json["caption"],
    cost: json["cost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "Res_N": resN,
    "caption": caption,
    "cost": cost,
  };
}
