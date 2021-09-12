import 'package:raywenderlich_provider/business_logic/models/currency.dart';
import 'package:raywenderlich_provider/business_logic/models/rate.dart';

import 'currency_service.dart';

class CurrencyServiceFake implements CurrencyService {
  @override
  Future<List<Rate>> getAllExchangeRates({String? base}) async {
    return [];
  }

  @override
  Future<List<Currency>> getFavoriteCurrencies() async {
    return [];
  }

  @override
  Future<void> saveFavoriteCurrencies(List<Currency> data) async {}
}
