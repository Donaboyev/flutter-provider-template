import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../../business_logic/models/rate.dart';
import 'web_api.dart';

class WebApiImpl implements WebApi {
  final _host = 'api.exchangeratesapi.io';
  final _apiKey = dotenv.env['API_KEY'];
  final _access = 'access_key';
  final _path = '/v1/latest';
  final Map<String, String> _headers = {'Accept': 'application/json'};

  List<Rate>? _rateCache;

  @override
  Future<List<Rate>>? fetchExchangeRates() async {
    if (_rateCache == null) {
      final uri = Uri.http(_host, _path, {_access: _apiKey});
      final results = await http.get(uri, headers: _headers);
      final jsonObject = json.decode(results.body);
      _rateCache = _createRateListFromRawMap(jsonObject);
    } else {
      debugPrint('getting rates from cache');
    }
    return Future.value(_rateCache);
  }

  List<Rate> _createRateListFromRawMap(Map jsonObject) {
    final Map rates = jsonObject['rates'];
    final String base = jsonObject['base'];
    List<Rate> list = [];
    list.add(Rate(baseCurrency: base, quoteCurrency: base, exchangeRate: 1.0));
    for (var rate in rates.entries) {
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
