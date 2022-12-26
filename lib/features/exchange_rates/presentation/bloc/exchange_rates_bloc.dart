import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:currency_app/features/exchange_rates/domain/usecases/get_currencies.dart';
import 'package:equatable/equatable.dart';

part 'exchange_rates_event.dart';

part 'exchange_rates_state.dart';

class ExchangeRatesBloc extends Bloc<ExchangeRatesEvent, ExchangeRatesState> {
  final GetCurrencies getCurrencies;

  ExchangeRatesBloc(this.getCurrencies) : super(ExchangeRatesInitial()) {
    on<ExchangeRatesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
