import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/features/currencies/domain/entities/currency_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CurrenciesRepository {
  Future<Either<Failure, CurrenciesEntity>> getCurrencies();
}
