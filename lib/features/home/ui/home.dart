import 'package:ecom_blocapp/data/cart_items.dart';
import 'package:ecom_blocapp/data/wishlist_items.dart';
import 'package:ecom_blocapp/features/cart/ui/cart.dart';
import 'package:ecom_blocapp/features/home/bloc/bloc/home_bloc.dart';
import 'package:ecom_blocapp/features/home/models/home_product.dart';
import 'package:ecom_blocapp/features/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  late HomeBloc homebloc;
  List<ProductData> products = [];
  @override
  void initState() {
    super.initState();
    homebloc = HomeBloc();
    homebloc.add(HomeIntialEvent());
  }

  @override
  void dispose() {
    homebloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homebloc,
      listener: (context, state) {
        if (state is HomenavigatetowishlistageactionState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Wishlist(wishlistitems: wishlistitems),
            ),
          );
        }
        if (state is HomenavigatetocartpageactionState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cart(cartitems: cartitems)),
          );
        }
        if (state is HomeLoadedState) {
          print(state.products.toString());
          products = state.products;
        }
        if (state is HomeProductwishlistedActionState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('product added to wishlist ❤️')),
          );
        }
        if (state is HomeProductcartItemsActionState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Product added to cart 🛒')));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Grocery App', style: GoogleFonts.lobster()),
            centerTitle: true,
            backgroundColor: Colors.blueGrey[50],
            actions: [
              IconButton(
                onPressed: () {
                  homebloc.add(HomewishlistnavigateEvent());
                },
                icon: Icon(Icons.favorite_border_outlined),
              ),
              IconButton(
                onPressed: () {
                  homebloc.add(HomecartbuttonnavigateEvent());
                },
                icon: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
          body: products.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple[50],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              child: Image.network(
                                product.image,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            product.name,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$${product.price}",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        homebloc.add(
                                          HomeProductwishlistbuttonclickedEvent(
                                            items: product,
                                          ),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        homebloc.add(
                                          HomeProductcartbuttonclickedEvent(
                                            items: product,
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.shopping_bag_outlined),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
