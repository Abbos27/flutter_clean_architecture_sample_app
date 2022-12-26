import 'package:currency_app/core/app_bloc/app_bloc.dart';
import 'package:currency_app/features/exchange_rates/domain/usecases/get_currencies.dart';
import 'package:currency_app/features/exchange_rates/presentation/bloc/exchange_rates_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  //External
  sl.registerLazySingleton(
    () => Dio()
      ..interceptors.add(
        LogInterceptor(
          request: true,
          responseBody: true,
          error: true,
          requestBody: true,
        ),
      ),
  );
  //Core
  sl.registerSingleton<AppBloc>(AppBloc());
  // Features
  getCurrencies();
}

void getCurrencies() {
  ///Presentation
  sl.registerFactory(() => ExchangeRatesBloc(sl()));

  ///Usecases
  sl.registerLazySingleton<GetCurrencies>(() => GetCurrencies(sl()));


}
