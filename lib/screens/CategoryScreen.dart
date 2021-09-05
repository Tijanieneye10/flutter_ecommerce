import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/widget/custom_app_bar.dart';
import 'package:market/widget/custom_bottom_nav.dart';
import 'package:market/model/model.dart';
import 'package:market/widget/widget.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = '/category';

  // for routing
  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CategoryScreen(category: category));
  }

  final Category category;

  CategoryScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((element) => element.category == category.name)
        .toList();
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: category.name,
        ),
        bottomNavigationBar: CustomBottomBar(),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            itemCount: categoryProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.11,
              crossAxisSpacing: 0.5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              ));
            }),
      ),
    );
  }
}
