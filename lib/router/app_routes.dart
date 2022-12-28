import 'package:currency_app/features/currencies/presentation/bloc/currencies_bloc.dart';
import 'package:currency_app/features/currencies/presentation/pages/currencies_page.dart';
import 'package:currency_app/features/favorite_currencies/presentation/pages/FavoritesPage.dart';
import 'package:currency_app/features/main/presentation/pages/main_page.dart';
import 'package:currency_app/injector_container.dart';
import 'package:currency_app/router/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellRootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.exchangeRates,
    routes: [
      ShellRoute(
          navigatorKey: shellRootNavigatorKey,
          builder: (context, routerState, child) => MainPage(),
          routes: [
            GoRoute(
              path: Routes.exchangeRates,
              name: Routes.exchangeRates,
              builder: (_, __) => BlocProvider<ExchangeRatesBloc>(
                create: (_) => sl<ExchangeRatesBloc>(),
                child: const ExchangeRatesPage(),
              ),
            ),
            GoRoute(
                path: Routes.favoriteCurrencies,
                name: Routes.favoriteCurrencies,
                builder: (_, __) => const FavoritesPage()),
          ])
    ]);
