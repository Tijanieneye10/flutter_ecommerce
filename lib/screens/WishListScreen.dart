import 'package:flutter/material.dart';
import 'package:market/widget/widget.dart';
import 'package:market/model/model.dart';
class WishListScreen extends StatelessWidget {
  static const String routeName = '/wish-list';


  // for routing
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => WishListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Wish List',
        ),
        bottomNavigationBar: CustomBottomBar(),
        body: GridView.builder(
            itemCount: Product.products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2.4,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: ProductCard(
                    product: Product.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isWishList: true,
                  ));
            }),
      ),

    );
  }
}
