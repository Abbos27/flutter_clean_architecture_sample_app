import 'package:currency_app/features/exchange_rates/data/models/currency.dart';

class CurrenciesResponse {
  CurrenciesResponse({
    this.currencies,
  });

  CurrenciesResponse.fromJson(dynamic json) {
    if (json['currencies'] != null) {
      currencies = [];
      json['currencies'].forEach((v) {
        currencies?.add(Currency.fromJson(v));
      });
    }
  }

  List<Currency>? currencies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (currencies != null) {
      map['currencies'] = currencies?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
