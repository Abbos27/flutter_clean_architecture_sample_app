import 'package:currency_app/app.dart';
import 'package:currency_app/core/app_bloc/app_bloc.dart';
import 'package:currency_app/features/currencies/presentation/bloc/currencies_bloc.dart';
import 'package:currency_app/injector_container.dart' as di;
import 'package:currency_app/injector_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await di.init();
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AppBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ExchangeRatesBloc>(),
        ),
      ],
      child: const App(),
    );
  }
}
