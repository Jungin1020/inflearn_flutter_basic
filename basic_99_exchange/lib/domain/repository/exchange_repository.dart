abstract interface class ExchangeRepository {
  Future<Map<String, dynamic>> getExchanges(String baseCode);
}
