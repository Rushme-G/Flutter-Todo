class Crypto {
  final String id;
  final String name;
  final String symbol;
  final double price;

  Crypto(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.price});

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      id: json['id'],
      name: json['name'],
      symbol: json['symbol'],
      price: json['current_price'].toDouble(),
    );
  }
}
