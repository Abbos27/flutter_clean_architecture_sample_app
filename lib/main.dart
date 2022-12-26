import 'package:currency_app/app.dart';
import 'package:currency_app/core/app_bloc/app_bloc.dart';
import 'package:currency_app/features/exchange_rates/presentation/bloc/exchange_rates_bloc.dart';
import 'package:currency_app/injector_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(),
        ),
        BlocProvider(
          create: (context) => sl<ExchangeRatesBloc>(),
        ),
      ],
      child: const App(),
    );
  }
}
