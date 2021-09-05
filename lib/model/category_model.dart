import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  Category({required this.name, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(name: 'Soft Drink',
        imageUrl: 'https://images.unsplash.com/photo-1606168094336-48f205276929?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c29mdCUyMGRyaW5rfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Category(name: 'Smoothies',
        imageUrl: 'https://images.unsplash.com/photo-1619898804188-e7bad4bd2127?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c21vb3RoaWVzfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Category(name: 'Water',
        imageUrl: 'https://images.unsplash.com/photo-1460501501851-d5946a18e552?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHdhdGVyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  ];

}