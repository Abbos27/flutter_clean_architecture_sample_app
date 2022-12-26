import 'package:currency_app/constants/constants.dart';
import 'package:currency_app/core/error/exeptions.dart';
import 'package:currency_app/features/exchange_rates/data/data_source/remote/get_currencies.dart';
import 'package:currency_app/features/exchange_rates/data/models/currencies_response.dart';
import 'package:dio/dio.dart';

class GetCurrenciesRemoteDataSourceImpl
    implements GetCurrenciesRemoteDataSource {
  final Dio dio;

  GetCurrenciesRemoteDataSourceImpl(this.dio);

  @override
  Future<CurrenciesResponse> getCurrencies() async {
    try {
      final response = await dio.get(
        '${Constants.baseUrl}${Urls.get_exchange_rates_url}',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return CurrenciesResponse.fromJson(response.data);
      } else {
        throw ServerException.fromJson(response.data);
      }
    } on DioError catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: Warnings.SOMETHING_WENT_WRONG);
    }
  }
}
