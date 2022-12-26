import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/features/exchange_rates/data/data_source/remote/get_currencies.dart';
import 'package:currency_app/features/exchange_rates/domain/entities/currency_entity.dart';
import 'package:currency_app/features/exchange_rates/domain/repositories/exchange_rates_repository.dart';
import 'package:dartz/dartz.dart';

class ExchangeRatesRepositoryIml implements ExchangeRatesRepository {
  final GetCurrenciesRemoteDataSource getCurrenciesRemoteDataSource;

  ExchangeRatesRepositoryIml(this.getCurrenciesRemoteDataSource);

  @override
  Future<Either<Failure, CurrencyEntity>> getCurrencies() {
    throw UnimplementedError();
  }
}
