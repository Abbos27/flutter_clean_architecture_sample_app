import 'package:currency_app/constants/constants.dart';
import 'package:currency_app/core/app_bloc/app_bloc.dart';
import 'package:currency_app/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: AppTitle.appTitle,
          routerConfig: router,
        );
      },
    );
  }
}
