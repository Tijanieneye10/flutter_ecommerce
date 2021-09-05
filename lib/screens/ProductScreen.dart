import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/widget/custom_app_bar.dart';
import 'package:market/model/model.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';



  // for routing
  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;

  ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          color: Colors.black,
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.share, color: Colors.white,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.white,),),
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                  child: Text('Add to Cart', style: TextStyle(fontSize: 20.0, color: Colors.black),)),
            ],
          ),
        ),
        appBar: CustomAppBar(
          title: product.name,
        ),
        // bottomNavigationBar: CustomBottomBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    child: Image.network(product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                    height: 200.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context).textTheme.headline3!.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          Text(
                           '${product.price}',
                            style: Theme.of(context).textTheme.headline3!.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ExpansionListView(title: 'Product Information', desc: 'Alias mauris, tortor ullam, '
                      'ipsum consequatur, senectus soluta. Dolor velit? Aptent fugiat totam molestias tempor'
                      ' orci hic quod occaecat magnam quasi aenean, voluptatum, sociis? Platea nam eum minim '
                      'possimus dolorem! Sed morbi non nonummy rem, quia, quisquam autem magni pharetra proident '
                      'quidem. Maecenas veniam! Viverra, neque fusce monte', isExpand: true,),
                  ExpansionListView(title: 'Delivery Information', desc: 'Alias mauris, tortor ullam, ipsum '
                      'consequatur, senectus soluta. Dolor velit? Aptent fugiat totam molestias tempor orci '
                      'hic quod occaecat magnam quasi aenean, voluptatum, sociis? Platea nam '
                      'eum minim possimus dolorem! Sed morbi non nonummy rem, quia, quisquam '
                      'autem magni pharetra proident quidem. Maecenas veniam! Viverra, neque '
                      'fusce monte', isExpand: false,),
                ],
              ),
        ),
          ),
    );
  }
}

class ExpansionListView extends StatelessWidget {
  final String title;
  final String desc;
  final bool isExpand;
  const ExpansionListView({
    Key? key,
    required this.title,
    required this.desc,
    required this.isExpand
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: isExpand,
      title: Text(title, style: Theme.of(context).textTheme.headline3,),
      children: [
        ListTile(
          title: Text(desc)
        ),
      ],
    );
  }
}
