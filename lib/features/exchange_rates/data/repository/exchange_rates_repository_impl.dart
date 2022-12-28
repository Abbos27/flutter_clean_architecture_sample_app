import 'package:currency_app/constants/constants.dart';
import 'package:currency_app/core/error/exeptions.dart';
import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/features/exchange_rates/data/data_source/remote/get_currencies.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:currency_app/features/exchange_rates/domain/entities/currency_entity.dart';
import 'package:currency_app/features/exchange_rates/domain/repositories/exchange_rates_repository.dart';
import 'package:dartz/dartz.dart';

class ExchangeRatesRepositoryImpl implements ExchangeRatesRepository {
  final GetCurrenciesRemoteDataSource getCurrenciesRemoteDataSource;

  ExchangeRatesRepositoryImpl(this.getCurrenciesRemoteDataSource);

  @override
  Future<Either<Failure, CurrenciesEntity>> getCurrencies() async {
    try {
      final response = await getCurrenciesRemoteDataSource.getCurrencies();
      return Right(
        response.toEntity(),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          message: (e is ServerException)
              ? e.message
              : Warnings.something_went_wrong,
        ),
      );
    }
  }
}
