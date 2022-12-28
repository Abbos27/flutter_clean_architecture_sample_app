import 'dart:io';
import 'package:currency_app/features/currencies/presentation/pages/currencies_page.dart';
import 'package:currency_app/features/favorite_currencies/presentation/pages/FavoritesPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Row(
                  children: [
                    Text("Currency App"),
                    Spacer(),
                    Text(" App"),
                    InkWell(onTap: () {}, child: Icon(Icons.add)),
                  ],
                ),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: const TabBar(
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
          body:  const TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              ExchangeRatesPage(),
              FavoritesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
