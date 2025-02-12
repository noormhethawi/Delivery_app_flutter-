import 'dart:convert';
import 'package:http/http.dart' as http;

class Restaurant {
  final String name;
  final String image;
  final double rating;
  final double distance;

  Restaurant({
    required this.name,
    required this.image,
    required this.rating,
    required this.distance,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json['name'],
      image: json['image'],
      rating: json['rating'] ?? 0.0, // إذا لم يكن هناك تقييم، استخدم 0
      distance: json['distance'] ?? 0.0, // إذا لم يكن هناك مسافة، استخدم 0
    );
  }
}

Future<List<Restaurant>> fetchRestaurants() async {
  final response =
      await http.get(Uri.parse('https://delivery.focal-x.com/api/restaurants'));

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    List<dynamic> restaurantsData = data['data']['restaurants'];
    return restaurantsData.map((json) => Restaurant.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load restaurants');
  }
}
