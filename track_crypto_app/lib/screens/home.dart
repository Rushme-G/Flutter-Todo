import 'package:flutter/material.dart';
import 'package:track_crypto_app/domain/crypto_model.dart';
import 'package:track_crypto_app/domain/crypto_repo.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Crypto Tracker',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CryptoListScreen(),
//     );
//   }
// }

class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {
  late Future<List<Crypto>> futureCryptos;

  @override
  void initState() {
    super.initState();
    futureCryptos = ApiService().fetchCryptocurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Tracker'),
      ),
      body: Center(
        child: FutureBuilder<List<Crypto>>(
          future: futureCryptos,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Crypto crypto = snapshot.data![index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(crypto.symbol.toUpperCase()),
                    ),
                    title: Text(crypto.name),
                    subtitle: Text('\$${crypto.price.toStringAsFixed(2)}'),
                  );
                },
              );
            } else {
              return Text('No data available');
            }
          },
        ),
      ),
    );
  }
}
