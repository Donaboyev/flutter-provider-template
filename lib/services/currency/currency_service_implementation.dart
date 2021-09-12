import 'package:raywenderlich_provider/business_logic/models/currency.dart';
import 'package:raywenderlich_provider/business_logic/models/rate.dart';
import 'package:raywenderlich_provider/services/service_locator.dart';
import 'package:raywenderlich_provider/services/storage/storage_service.dart';
import 'package:raywenderlich_provider/services/web_api/web_api.dart';

import 'currency_service.dart';

class CurrencyServiceImpl implements CurrencyService {
  WebApi _webApi = serviceLocator<WebApi>();
  StorageService _storageService = serviceLocator<StorageService>();

  static final defaultFavorites = [Currency('EUR'), Currency('USD')];

  @override
  Future<List<Rate>>? getAllExchangeRates({String? base}) async {
    List<Rate>? webData = await _webApi.fetchExchangeRates();
    if (base != null) {
      return _convertBaseCurrency(base, webData ?? []);
    }
    return Future.value(webData);
  }

  @override
  Future<List<Currency>> getFavoriteCurrencies() async {
    final favorites = await _storageService.getFavoriteCurrencies();
    if (favorites == null || favorites.length <= 1) {
      return defaultFavorites;
    }
    return favorites;
  }

  List<Rate> _convertBaseCurrency(String base, List<Rate> remoteData) {
    if (remoteData[0].baseCurrency == base) {
      return remoteData;
    }
    num? divisor = remoteData
        .firstWhere((rate) => rate.quoteCurrency == base)
        .exchangeRate;
    return remoteData
        .map(
          (rate) => Rate(
            baseCurrency: base,
            quoteCurrency: rate.quoteCurrency,
            exchangeRate: (rate.exchangeRate ?? 0) / (divisor ?? 0),
          ),
        )
        .toList();
  }

  @override
  Future<void> saveFavoriteCurrencies(List<Currency>? data) async {
    if (data == null || data.length == 0) return;
    await _storageService.saveFavoriteCurrencies(data);
  }
}
