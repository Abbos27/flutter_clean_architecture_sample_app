class Currency {
  Currency({
    this.id,
    this.code,
    this.ccy,
    this.ccyNmRU,
    this.ccyNmUZ,
    this.ccyNmUZC,
    this.ccyNmEN,
    this.nominal,
    this.rate,
    this.diff,
    this.date,
  });

  Currency.fromJson(dynamic json) {
    id = json['id'];
    code = json['Code'];
    ccy = json['Ccy'];
    ccyNmRU = json['CcyNm_RU'];
    ccyNmUZ = json['CcyNm_UZ'];
    ccyNmUZC = json['CcyNm_UZC'];
    ccyNmEN = json['CcyNm_EN'];
    nominal = json['Nominal'];
    rate = json['Rate'];
    diff = json['Diff'];
    date = json['Date'];
  }

  num? id;
  String? code;
  String? ccy;
  String? ccyNmRU;
  String? ccyNmUZ;
  String? ccyNmUZC;
  String? ccyNmEN;
  String? nominal;
  String? rate;
  String? diff;
  String? date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Code'] = code;
    map['Ccy'] = ccy;
    map['CcyNm_RU'] = ccyNmRU;
    map['CcyNm_UZ'] = ccyNmUZ;
    map['CcyNm_UZC'] = ccyNmUZC;
    map['CcyNm_EN'] = ccyNmEN;
    map['Nominal'] = nominal;
    map['Rate'] = rate;
    map['Diff'] = diff;
    map['Date'] = date;
    return map;
  }
}
