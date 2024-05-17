part of 'store_cubit.dart';

sealed class StoreState {}

final class StoreInitial extends StoreState {}

final class StoreLoading extends StoreState {}

final class StoreLoaded extends StoreState {}
