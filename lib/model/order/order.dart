class OrderProduct {
  final int generalId;
  final int productId;
  final String productName;
  final String image;
  final int price;
  final int evaluation;
  final int discount;
  final int userId;
    int quantity;
  final String city;

  OrderProduct({
    required this.generalId,
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.evaluation,
    required this.discount,
    required this.userId,
    required this.quantity,
    required this.city,
  });

  factory OrderProduct.fromJson(Map<String, dynamic> json) {
    final product = json['peoduct'];
    final user = json['user'];

    return OrderProduct(
      generalId: json['id'],
      productId: product['id'],
      productName: product['name'],
      image: product['image'],
      price: product['price'],
      evaluation: product['evaluation'],
      discount: product['discount'],
      userId: user['id'],
      quantity: json['quantity'],
      city: json['city'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': generalId,
      'peoduct': {
        'id': productId,
        'name': productName,
        'image': image,
        'price': price,
        'evaluation': evaluation,
        'discount': discount,
      },
      'user': {
        'id': userId,
      },
      'quantity': quantity,
      'city': city,
    };
  }
}
