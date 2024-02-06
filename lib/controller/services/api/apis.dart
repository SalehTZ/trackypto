class CoinGeckoApi {
  // Define constants at the class level
  static const String baseUrl = 'https://api.coingecko.com/api/v3/';
  static const String marketsEndpoint = 'coins/markets';
  static const String currencyParam = 'vs_currency';
  static const String orderParam = 'order';
  static const String perPageParam = 'per_page';
  static const String pageParam = 'page';
  static const String sparklineParam = 'sparkline';
  static const String localeParam = 'locale';

  // Default values for optional parameters
  final String defaultCurrency = 'usd';
  final int defaultNoOfData = 20;

  /// Method to build a market data URL
  String buildMarketDataUrl({
    String? currency,
    int? noOfData,
    int? pageNumber,
  }) {
    return Uri.parse(baseUrl + marketsEndpoint).replace(
      queryParameters: {
        currencyParam: currency ?? defaultCurrency,
        orderParam: 'market_cap_desc',
        perPageParam: (noOfData ?? defaultNoOfData).toString(),
        pageParam: (pageNumber ?? 1).toString(),
        sparklineParam: 'false',
        localeParam: 'en',
      },
    ).toString();
  }
}
