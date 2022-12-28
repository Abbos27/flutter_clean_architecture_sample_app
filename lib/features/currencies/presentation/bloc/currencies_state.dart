import 'package:equatable/equatable.dart';

abstract class ExchangeRatesState extends Equatable {
  const ExchangeRatesState();
}

class ExchangeRatesInitial extends ExchangeRatesState {
  @override
  List<Object> get props => [];
}

class ExchangeListFetched extends ExchangeRatesState {
  const ExchangeListFetched();

  @override
  List<Object?> get props => [];
}
