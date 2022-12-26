import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';


abstract class ExchangeRatesRepository {
  Future<CurrenciesResponse> getCurrencies();
}
