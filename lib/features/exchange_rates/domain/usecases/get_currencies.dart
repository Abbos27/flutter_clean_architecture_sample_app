import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/core/usecase/usecase.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:currency_app/features/exchange_rates/data/repository/exchange_rates_repository_impl.dart';
import 'package:currency_app/features/exchange_rates/domain/entities/currency_entity.dart';
import 'package:currency_app/features/exchange_rates/domain/repositories/exchange_rates_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrencies extends UseCase {
  final ExchangeRatesRepository exchangeRatesRepository;

  GetCurrencies(
    this.exchangeRatesRepository,
  );

  @override
  Future<Either<Failure, CurrenciesEntity>> call(params) async {
    return await exchangeRatesRepository.getCurrencies();
  }
}
