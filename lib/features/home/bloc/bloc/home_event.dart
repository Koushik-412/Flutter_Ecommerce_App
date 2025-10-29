part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeIntialEvent extends HomeEvent {}

class HomeProductwishlistbuttonclickedEvent extends HomeEvent {
  final ProductData items;
  const HomeProductwishlistbuttonclickedEvent({required this.items});
}

class HomeProductcartbuttonclickedEvent extends HomeEvent {
  final ProductData items;
  const HomeProductcartbuttonclickedEvent({required this.items});
}

class HomewishlistnavigateEvent extends HomeEvent {}

class HomecartbuttonnavigateEvent extends HomeEvent {}
