import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product(
      {required this.name,
      required this.imageUrl,
      required this.category,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl, category, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        name: 'Tecno Camon 17',
        imageUrl: 'https://images.unsplash.com/photo-1523381294911-8d3cead13475?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hpcnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        category: 'water',
        price: 3.0,
        isRecommended: true,
        isPopular: true
    ),
    Product(
        name: 'Shirt',
        imageUrl: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        category: 'smoothies',
        price: 3.0,
        isRecommended: true,
        isPopular: true
    ),
    Product(
        name: 'Hanger',
        imageUrl: 'https://images.unsplash.com/photo-1534536281715-e28d76689b4d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvbmV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        category: 'Smoothies',
        price: 3.0,
        isRecommended: true,
        isPopular: true
    ),

    Product(
        name: 'Samsung',
        imageUrl: 'https://images.unsplash.com/photo-1534536281715-e28d76689b4d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvbmV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        category: 'Smoothies',
        price: 3.0,
        isRecommended: false,
        isPopular: true
    ),

    Product(
        name: 'Infinix',
        imageUrl: 'https://images.unsplash.com/photo-1534536281715-e28d76689b4d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvbmV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        category: 'Smoothies',
        price: 3.0,
        isRecommended: false,
        isPopular: true
    ),
    Product(
        name: 'Nokia',
        imageUrl: 'https://images.unsplash.com/photo-1534536281715-e28d76689b4d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvbmV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        category: 'food',
        price: 3.0,
        isRecommended: false,
        isPopular: true
    ),
  ];
}
