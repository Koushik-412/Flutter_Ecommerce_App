import 'package:bloc/bloc.dart';
import 'package:ecom_blocapp/data/cart_items.dart';
import 'package:ecom_blocapp/data/grocery_data.dart';
import 'package:ecom_blocapp/data/wishlist_items.dart';
import 'package:ecom_blocapp/features/home/models/home_product.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<HomeIntialEvent>((event, emit) async {
      emit(HomeLoadingState());
      await Future.delayed(Duration(seconds: 3));
      emit(
        HomeLoadedState(
          products: GroceryData.groceryProducts
              .map((product) => ProductData.fromMap(product))
              .toList(),
        ),
      );
    });

    on<HomewishlistnavigateEvent>((event, emit) {
      print("wishlistbutton clicked");
      emit(HomenavigatetowishlistageactionState());
    });

    on<HomecartbuttonnavigateEvent>((event, emit) {
      print("productcartbutton clicked");
      emit(HomenavigatetocartpageactionState());
    });

    on<HomeProductwishlistbuttonclickedEvent>((event, emit) {
      print("wishlist button clicked");
      wishlistitems.add(event.items);
      emit(HomeProductwishlistedActionState());
    });

    on<HomeProductcartbuttonclickedEvent>((event, emit) {
      print("cart button clicked");
      cartitems.add(event.items);
      emit(HomeProductcartItemsActionState());
    });
  }
}
