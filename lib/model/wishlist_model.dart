import 'package:equatable/equatable.dart';
import 'package:market/model/model.dart';

class WishList extends Equatable{
  final List<Product> products;

  WishList({this.products = const <Product>[]});


  @override
  // TODO: implement props
  List<Object?> get props =>[];

}
