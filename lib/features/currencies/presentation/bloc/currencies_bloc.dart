import 'package:bloc/bloc.dart';
import 'package:currency_app/features/currencies/domain/usecases/get_currencies.dart';
import 'package:currency_app/features/currencies/presentation/bloc/currencies_event.dart';
import 'package:currency_app/features/currencies/presentation/bloc/currencies_state.dart';



class ExchangeRatesBloc extends Bloc<ExchangeRatesEvent, ExchangeRatesState> {
  final GetCurrencies getCurrencies;

  ExchangeRatesBloc({
    required this.getCurrencies,
  }) : super(ExchangeRatesInitial()) {
    on<ExchangeRatesEvent>((event, emit) {});
  }
}
