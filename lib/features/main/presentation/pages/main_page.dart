import 'dart:io';

import 'package:currency_app/features/exchange_rates/presentation/pages/exchange_rates_page.dart';
import 'package:currency_app/features/favorite_currencies/presentation/pages/FavoritesPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: Row(
                    children: [
                      Text("Currency App"),
                      Spacer(),
                      Text(" App"),
                      Icon(Icons.add),
                    ],
                  ),
                  pinned: true,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        text: 'Exchange rates',
                      ),
                      Tab(
                        text: 'Favorites',
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: Platform.isIOS ? BouncingScrollPhysics() : null,
              children: [
                ExchangeRatesPage(),
                FavoritesPage(),
              ],
            )),
      ),
    );
  }
}
