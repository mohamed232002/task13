part of 'money_cubit.dart';

@immutable
abstract class MoneyState {}

class MoneyInitial extends MoneyState {}
class AddToProductsState extends MoneyState {}
class Total extends MoneyState {}
