import 'package:ecom_blocapp/features/home/models/home_product.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  final List<ProductData> wishlistitems;
  const Wishlist({super.key, required this.wishlistitems});

  @override
  State<Wishlist> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Wishlist Page')));
  }
}
