import 'package:currency_app/features/currencies/data/models/currency.dart';
import 'package:currency_app/features/currencies/domain/entities/currency_entity.dart'
    as entity;

class CurrenciesResponse {
  CurrenciesResponse({
    this.data,
  });

  CurrenciesResponse.fromJson(dynamic json) {
    if (json['currencies'] != null) {
      data = [];
      json['currencies'].forEach((v) {
        data?.add(Currency.fromJson(v));
      });
    }
  }

  List<Currency>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['currencies'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

extension CurrenciesResponseToEntity on CurrenciesResponse {
  entity.CurrenciesEntity toEntity() {
    if (data != null) {
      final currencies = data?.map(
        (currencies) {
          return entity.Currency(
            currencies.nominal,
            currencies.rate,
            currencies.diff,
            currencies.date,
            currencies.ccy,
          );
        },
      ).toList();
      return entity.CurrenciesEntity(currencies);
    } else {
      return const entity.CurrenciesEntity(null);
    }
  }
}
