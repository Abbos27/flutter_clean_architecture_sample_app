import 'package:currency_app/core/widgets/currency_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExchangeRatesPage extends StatelessWidget {
  const ExchangeRatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        CupertinoSliverRefreshControl(),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 20, (context, index) => CurrencyItemWidget()))
      ],
    );
  }
}
