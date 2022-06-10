import 'package:apart_rent/models/Product.dart';
import 'package:flutter/material.dart';

class ApartDetailScreen extends StatelessWidget{
  static String routeName = "/details";
  @override 
  Widget build(BuildContext context){
    return Scaffold();
  }
}

class ApartDetailArguments{
  final Product product;

  ApartDetailArguments({required this.product});
}