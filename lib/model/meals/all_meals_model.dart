// To parse this JSON data, do
//
//     final allMealsModel = allMealsModelFromJson(jsonString);

import 'dart:convert';

AllMealsModel allMealsModelFromJson(String str) => AllMealsModel.fromJson(json.decode(str));

String allMealsModelToJson(AllMealsModel data) => json.encode(data.toJson());

class AllMealsModel {
  List<Datum> data;
  String message;

  AllMealsModel({
    required this.data,
    required this.message,
  });

  factory AllMealsModel.fromJson(Map<String, dynamic> json) => AllMealsModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  int id;
  String name;
  SubCategory subCategory;
  Restaurant? restaurant;
  String image;
  int price;
  int evaluation;
  int discount;

  Datum({
    required this.id,
    required this.name,
    required this.subCategory,
    required this.restaurant,
    required this.image,
    required this.price,
    required this.evaluation,
    required this.discount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    subCategory: SubCategory.fromJson(json["sub-category"]),
    restaurant: json["restaurant"] == null ? null : Restaurant.fromJson(json["restaurant"]),
    image: json["image"],
    price: json["price"],
    evaluation: json["evaluation"],
    discount: json["discount"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "sub-category": subCategory.toJson(),
    "restaurant": restaurant?.toJson(),
    "image": image,
    "price": price,
    "evaluation": evaluation,
    "discount": discount,
  };
}

class Restaurant {
  int id;
  String name;
  String image;

  Restaurant({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["id"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };
}

class SubCategory {
  int id;
  Name name;
  Category category;

  SubCategory({
    required this.id,
    required this.name,
    required this.category,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
    id: json["id"],
    name: nameValues.map[json["name"]]!,
    category: Category.fromJson(json["category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameValues.reverse[name],
    "category": category.toJson(),
  };
}

class Category {
  int id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

enum Name {
  EMPTY,
  NAME,
  PURPLE
}

final nameValues = EnumValues({
  "دجاج": Name.EMPTY,
  "باستا": Name.NAME,
  "مقبلات": Name.PURPLE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
