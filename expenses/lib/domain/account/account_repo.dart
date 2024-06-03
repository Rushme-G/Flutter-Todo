import 'dart:convert';

import 'package:expenses/plugins/http.dart';

import 'account_model.dart';

// Future<AccountModel> loadAccountData() async {
//   final res = await GetRequest('account/me');
//   print(jsonDecode(res.body));
//   final temp = jsonDecode(res.body)['data'];
//   return AccountModel(
//     id: temp['id'],
//     title: temp['title'],
//     img: temp['img'],
//     openingBalance: temp['openingBalance'],
//   );
// }

class AccountRepo {
  Future loadAccounts() async {
    final res = await GetRequest('account');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for (final acc in jsonDecode(res.body)['data']) {
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
}

Future loadAccountData() async {
  final res = await GetRequest('account/me');
  print(jsonDecode(res.body));
  List<AccountModel> tempAccounts = [];
  for (final acc in jsonDecode(res.body)['data']) {
    tempAccounts.add(AccountModel.fromJson(acc));
  }
  return tempAccounts;
}
