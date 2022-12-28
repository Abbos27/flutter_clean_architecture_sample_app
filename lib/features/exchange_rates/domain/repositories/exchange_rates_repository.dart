import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:currency_app/features/exchange_rates/domain/entities/currency_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ExchangeRatesRepository {
  Future<Either<Failure, CurrenciesEntity>> getCurrencies();
}
