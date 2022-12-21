import 'package:currency_app/core/widgets/currency_item_widget.dart';
import 'package:flutter/material.dart';

class ExchangeRatesPage extends StatelessWidget {
  const ExchangeRatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 5, (context, index) => CurrencyItemWidget()))
      ],
    );
  }
}
