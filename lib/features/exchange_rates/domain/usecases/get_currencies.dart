import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/core/usecase/usecase.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:currency_app/features/exchange_rates/domain/repositories/exchange_rates_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrencies {
  final ExchangeRatesRepository exchangeRatesRepository;

  GetCurrencies(this.exchangeRatesRepository);

  Future<CurrenciesResponse> call() async {
    return await exchangeRatesRepository.getCurrencies();
  }
}
