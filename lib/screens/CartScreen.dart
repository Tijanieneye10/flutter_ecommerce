import 'package:flutter/material.dart';
import 'package:market/widget/custom_app_bar.dart';
import 'package:market/widget/custom_bottom_nav.dart';
class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';


  // for routing
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Cart',
        ),
        bottomNavigationBar: CustomBottomBar(),
        body: Center(
          child: Text('Here is cart'),
        ),
      ),

    );
  }
}
