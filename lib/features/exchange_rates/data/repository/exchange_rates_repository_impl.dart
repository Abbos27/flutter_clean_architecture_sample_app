import 'package:currency_app/constants/constants.dart';
import 'package:currency_app/core/error/exeptions.dart';
import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:currency_app/features/exchange_rates/domain/entities/currency_entity.dart';
import 'package:currency_app/features/exchange_rates/domain/repositories/exchange_rates_repository.dart';
import 'package:dartz/dartz.dart';

class ExchangeRatesRepositoryImpl implements ExchangeRatesRepository {
  final ExchangeRatesRepository exchangeRatesRepository;

  ExchangeRatesRepositoryImpl(this.exchangeRatesRepository);

  @override
  Future<CurrenciesResponse> getCurrencies() async {
    try {
      final response = exchangeRatesRepository.getCurrencies();
      return response;
    } catch (e) {
      return CurrenciesResponse();
    }
  }
}
