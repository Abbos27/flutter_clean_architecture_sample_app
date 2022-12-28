import 'package:equatable/equatable.dart';

class CurrenciesEntity extends Equatable {
  final List<Currency>? data;

  const CurrenciesEntity(this.data);

  @override
  List<Object?> get props => throw UnimplementedError();
}

class Currency extends Equatable {
  final String? nominal;
  final String? rate;
  final String? diff;
  final String? date;
  final String? ccy;

  const Currency(this.nominal, this.rate, this.diff, this.date, this.ccy);

  @override
  List<Object?> get props => [nominal, rate, diff, date];
}
