
import 'package:flutter/material.dart';
import 'package:market/model/model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final widthFactor;
  final double leftPosition;
  final bool isWishList;
  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPosition = 5,
    this.isWishList = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/product', arguments: product);
          },
          child: Container(
            width: widthValue,
            height: 150.0,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 60.0,
          left: leftPosition,
          child: Container(
            width: widthValue - 5 - leftPosition,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(50),
            ),
          ),
        ),
        Positioned(
          top: 65.0,
          left: leftPosition + 5,
          child: Container(
            width: widthValue - 15 - leftPosition,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          product.name,
                          style:
                          Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(' \$${product.price}',  style:
                        Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.add_circle, color: Colors.white),
                      onPressed: (){},
                    ),
                  ),
                  isWishList ? Expanded(
                    child: IconButton(
                      icon: Icon(Icons.delete, color: Colors.white),
                      onPressed: (){},
                    ),
                  ) : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}