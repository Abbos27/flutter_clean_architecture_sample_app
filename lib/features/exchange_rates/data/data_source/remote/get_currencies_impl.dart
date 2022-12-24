import 'package:currency_app/features/exchange_rates/data/data_source/remote/get_currencies.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:dio/dio.dart';

class GetCurrenciesRemoteDataSourceImpl
    implements GetCurrenciesRemoteDataSource {
  final Dio dio;

  GetCurrenciesRemoteDataSourceImpl(this.dio);

  @override
  Future<CurrenciesResponse> getCurrencies() {
    // TODO: implement getCurrencies
    throw UnimplementedError();
  }
}
