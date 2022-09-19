
import 'dart:convert';

List<Meals> mealsFromJson(String str) => List<Meals>.from(json.decode(str).map((x) => Meals.fromJson(x)));

String mealsToJson(List<Meals> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Meals {
  Meals({
    required this.id,
    required this.mealName,
    required this.mealCaption,
    required this.mealType,
    required this.mealImage,
    required this.mealNot,
    required this.mealCost,
    required this.mealTag,
    required this.resN,
  });

  int id;
  String mealName;
  String mealCaption;
  String mealType;
  String mealImage;
  String mealNot;
  int mealCost;
  String mealTag;
  String resN;

  factory Meals.fromJson(Map<String, dynamic> json) => Meals(
    id: json["id"],
    mealName: json["meal_name"],
    mealCaption: json["meal_caption"],
    mealType: json["meal_type"],
    mealImage: json["meal_image"],
    mealNot: json["meal_not"],
    mealCost: json["meal_cost"],
    mealTag: json["meal_tag"],
    resN: json["Res_N"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "meal_name": mealName,
    "meal_caption": mealCaption,
    "meal_type": mealType,
    "meal_image": mealImage,
    "meal_not": mealNot,
    "meal_cost": mealCost,
    "meal_tag": mealTag,
    "Res_N": resN,
  };
}
