import 'package:currency_app/core/widgets/currency_item_widget.dart';
import 'package:currency_app/features/currencies/presentation/bloc/currencies_bloc.dart';
import 'package:currency_app/features/currencies/presentation/bloc/currencies_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExchangeRatesPage extends StatelessWidget {
  const ExchangeRatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeRatesBloc, ExchangeRatesState>(
      buildWhen: (oldState, currentState) =>
          oldState.runtimeType != currentState.runtimeType,
      builder: (context, state) {
        return CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            const CupertinoSliverRefreshControl(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) => const CurrencyItemWidget(),
              ),
            )
          ],
        );
      },
    );
  }
}
