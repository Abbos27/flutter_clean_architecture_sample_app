import 'package:currency_app/core/app_bloc/app_bloc.dart';
import 'package:currency_app/features/currencies/data/data_source/remote/get_currencies.dart';
import 'package:currency_app/features/currencies/data/data_source/remote/get_currencies_impl.dart';
import 'package:currency_app/features/currencies/data/repository/currencies_repository_impl.dart';
import 'package:currency_app/features/currencies/domain/repositories/currencies_repository.dart';
import 'package:currency_app/features/currencies/domain/usecases/get_currencies.dart';
import 'package:currency_app/features/currencies/presentation/bloc/currencies_bloc.dart';
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

  ///Core
  sl.registerSingleton<AppBloc>(AppBloc());

  /// Features
  getCurrencies();
}

void getCurrencies() {
  ///Presentation
  sl.registerFactory(
    () => ExchangeRatesBloc(
      getCurrencies: sl(),
    ),
  );

  ///Usecases
  sl.registerLazySingleton<GetCurrencies>(() => GetCurrencies(sl()));

  ///Repository
  sl.registerLazySingleton<CurrenciesRepository>(() => CurrenciesRepositoryImpl(
        sl(),
      ));

  ///Data
  sl.registerLazySingleton<GetCurrenciesRemoteDataSource>(
      () => GetCurrenciesRemoteDataSourceImpl(
            sl(),
          ));
}
