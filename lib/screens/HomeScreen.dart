import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:market/model/category_model.dart';
import 'package:market/model/product_model.dart';
import 'package:market/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  //For routing
  static const String routeName = '/';

  // for routing
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'BrainyMarkets',
        ),
        bottomNavigationBar: CustomBottomBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    //Decide the height of images
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    //Reduce the gap between the images
                    viewportFraction: 0.9,
                    //Determine the wideness of images
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  ),
                  items: Category.categories
                      .map((category) => HeroCarouselCard(category: category))
                      .toList(),
                ),
              ),


              SectionTitle(
                title: 'RECOMMENDED',
              ),

              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isRecommended)
                      .toList()),

              SectionTitle(
                title: 'MOST POPULAR',
              ),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isPopular)
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
