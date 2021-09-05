import 'package:flutter/material.dart';
import 'package:market/screens/screen.dart';
import 'package:market/model/model.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("The route is ${settings.name}");

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CategoryScreen.routeName:
        return CategoryScreen.route(category: settings.arguments as Category);
      case WishListScreen.routeName:
        return WishListScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
