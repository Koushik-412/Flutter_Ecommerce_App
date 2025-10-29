import 'package:ecom_blocapp/data/cart_items.dart';
import 'package:ecom_blocapp/features/home/models/home_product.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final List<ProductData> cartitems;
  const Cart({super.key, required this.cartitems});

  @override
  State<Cart> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart Page')),
      body: cartitems.isEmpty
          ? Center(child: Text('Cart is empty'))
          : Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: ListView.builder(
                itemCount: cartitems.length,
                itemBuilder: (context, index) {
                  var item = cartitems[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(backgroundImage: NetworkImage(item.image)),
                        Text(item.name),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
