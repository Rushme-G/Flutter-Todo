import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:track_crypto_app/domain/crypto_model.dart';

class ApiService {
  static const String apiUrl =
      'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd';

  Future<List<Crypto>> fetchCryptocurrencies() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((crypto) => Crypto.fromJson(crypto)).toList();
    } else {
      throw Exception('Failed to load cryptocurrencies');
    }
  }
}
