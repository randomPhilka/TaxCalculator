import 'package:flutter/foundation.dart';
import '../../../network/endpoints.dart';
import '../../../network/networkClient.dart';
import '../model/exchangeRate.dart';

class AddTaxApi {
  final NetworkClient networkClient;

  AddTaxApi({required this.networkClient});

  Future<double> getLariExchangeRateFor(DateTime date) async {
    try {
      final response = await networkClient.get(Endpoints.exchangeRates
          .replaceAll("{selectedDate}", date.toString()));
      final lariExchange = (response.data['data'] as ExchangeRateAPIModel)
          .map((e) => ExchangeRateAPIModel.fromJson(e))
          .currencies
          .where((currencie) => currencie.code == 'USD')
          .rateFormated;
      return lariExchange;
    } catch (error) {
      if (kDebugMode) {
        print("Failed to get LariExchangeRate, reasone $error");
      }
      rethrow;
    }
  }
}