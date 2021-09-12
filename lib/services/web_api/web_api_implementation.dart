import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:raywenderlich_provider/business_logic/models/rate.dart';
import 'web_api.dart';

class WebApiImpl implements WebApi {
  final _host = 'api.exchangeratesapi.io';
  final _apiKey = 'YOUR_API_KEY';
  final _access = 'access_key';
  final _path = '/v1/latest';
  final Map<String, String> _headers = {'Accept': 'application/json'};

  List<Rate>? _rateCache;

  Future<List<Rate>>? fetchExchangeRates() async {
    if (_rateCache == null) {
      print('getting rates from the web');
      final uri = Uri.http(_host, _path, {_access: _apiKey});
      final results = await http.get(uri, headers: _headers);
      print('===============> results $results');
      final jsonObject = json.decode(results.body);
      print('===============> json object $jsonObject');
      _rateCache = _createRateListFromRawMap(jsonObject);
    } else {
      print('getting rates from cache');
    }
    return Future.value(_rateCache);
  }

  List<Rate> _createRateListFromRawMap(Map jsonObject) {
    final Map rates = jsonObject['rates'];
    final String base = jsonObject['base'];
    List<Rate> list = [];
    list.add(Rate(baseCurrency: base, quoteCurrency: base, exchangeRate: 1.0));
    for (var rate in rates.entries) {
      print('====================> key: ${rate.key}');
      print('====================> value: ${rate.value}');
      list.add(
        Rate(
          baseCurrency: base,
          quoteCurrency: rate.key,
          exchangeRate: rate.value,
        ),
      );
    }
    return list;
  }
}
