import 'package:currency_app/features/currencies/domain/entities/currency_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ExchangeRatesEvent extends Equatable {
  const ExchangeRatesEvent();
}

class ExchangeRatesList extends ExchangeRatesEvent {
  final CurrenciesEntity? currenciesEntity;

  const ExchangeRatesList(this.currenciesEntity);

  @override
  List<Object?> get props => [
        currenciesEntity,
      ];

  ExchangeRatesList copyWith({CurrenciesEntity? currenciesEntity}) {
    return ExchangeRatesList(currenciesEntity ?? this.currenciesEntity);
  }
}
