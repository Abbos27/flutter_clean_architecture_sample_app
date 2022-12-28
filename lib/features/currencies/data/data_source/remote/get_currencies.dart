import 'package:currency_app/features/currencies/data/models/currencies_response.dart';

abstract class GetCurrenciesRemoteDataSource {
  Future<CurrenciesResponse> getCurrencies();
}
