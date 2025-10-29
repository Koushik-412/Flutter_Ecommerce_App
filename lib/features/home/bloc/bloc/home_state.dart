part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeLoadedState extends HomeState {
  final List<ProductData> products;
  HomeLoadedState({required this.products});
}

final class HomeErrorState extends HomeState {}

final class HomenavigatetowishlistageactionState extends HomeState {}

final class HomenavigatetocartpageactionState extends HomeState {}

final class HomeProductwishlistedActionState extends HomeState {}

final class HomeProductcartItemsActionState extends HomeState {}
