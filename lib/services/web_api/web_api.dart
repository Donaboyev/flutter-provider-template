import '../../business_logic/models/rate.dart';

abstract class WebApi {
  Future<List<Rate>>? fetchExchangeRates();
}
