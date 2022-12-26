import 'package:currency_app/features/exchange_rates/domain/entities/currency_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class ExchangeRatesRepository {
  Future<Either<Failure, CurrencyEntity>> getCurrencies();
}
