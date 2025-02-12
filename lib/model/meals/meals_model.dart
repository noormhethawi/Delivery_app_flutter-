// To parse this JSON data, do
//
//     final mealsModel = mealsModelFromJson(jsonString);

import 'dart:convert';

MealsModel mealsModelFromJson(String str) => MealsModel.fromJson(json.decode(str));

String mealsModelToJson(MealsModel data) => json.encode(data.toJson());

class MealsModel {
  Data data;
  String message;

  MealsModel({
    required this.data,
    required this.message,
  });

  factory MealsModel.fromJson(Map<String, dynamic> json) => MealsModel(
    data: Data.fromJson(json["data"]), // Directly parse the Data object
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  int id;
  String name;
  SubCategory subCategory;
  Restaurant restaurant;
  String image;
  int price;
  int evaluation;
  int discount;

  Data({
    required this.id,
    required this.name,
    required this.subCategory,
    required this.restaurant,
    required this.image,
    required this.price,
    required this.evaluation,
    required this.discount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    subCategory: SubCategory.fromJson(json["sub-category"]),
    restaurant: Restaurant.fromJson(json["restaurant"]),
    image: json["image"],
    price: json["price"],
    evaluation: json["evaluation"],
    discount: json["discount"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "sub-category": subCategory.toJson(),
    "restaurant": restaurant.toJson(),
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
  String name;
  Category category;

  SubCategory({
    required this.id,
    required this.name,
    required this.category,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
    id: json["id"],
    name: json["name"],
    category: Category.fromJson(json["category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
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
