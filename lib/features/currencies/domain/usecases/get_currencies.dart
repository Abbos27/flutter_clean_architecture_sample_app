import 'package:currency_app/core/error/failure.dart';
import 'package:currency_app/core/usecase/usecase.dart';
import 'package:currency_app/features/currencies/domain/entities/currency_entity.dart';
import 'package:currency_app/features/currencies/domain/repositories/currencies_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrencies extends UseCase {
  final CurrenciesRepository currenciesRepository;

  GetCurrencies(
    this.currenciesRepository,
  );

  @override
  Future<Either<Failure, CurrenciesEntity>> call(params) async {
    return await currenciesRepository.getCurrencies();
  }
}
