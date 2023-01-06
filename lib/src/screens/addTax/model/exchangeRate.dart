import 'package:json_annotation/json_annotation.dart';
part 'exchangeRate.g.dart';

@JsonSerializable()
class ExchangeRateAPIModel {
  String? date;
  List? currencies;

  ExchangeRateAPIModel(
      this.date,
      this.currencies,
      );

  factory ExchangeRateAPIModel.fromJson(Map<String, dynamic> json) => _$ExchangeRateAPIModelFromJson(json);
  Map<String, dynamic> toJson() => _$ExchangeRateAPIModelToJson(this);
}

@JsonSerializable()
class CurrenciesAPIModel {
  String? code;
  int? quantity;
  String? rateFormated;
  String? diffFormated;
  double? rate;
  String? name;
  @JsonKey(name: 'diff')
  double? difference;
  String? date;
  String? validFromDate;

  CurrenciesAPIModel(
      this.code,
      this.quantity,
      this.rateFormated,
      this.diffFormated,
      this.rate,
      this.name,
      this.difference,
      this.date,
      this.validFromDate,
      );

  factory CurrenciesAPIModel.fromJson(Map<String, dynamic> json) => _$CurrenciesAPIModelFromJson(json);
  Map<String, dynamic> toJson() => _$CurrenciesAPIModelToJson(this);
}