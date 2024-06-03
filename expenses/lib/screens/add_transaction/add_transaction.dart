import 'package:expenses/domain/account/account_model.dart';
import 'package:expenses/domain/account/account_repo.dart';
import 'package:expenses/domain/transaction/transaction_model.dart';
import 'package:expenses/domain/transaction/transaction_repo.dart';
import 'package:flutter/material.dart';

class AddTranscation extends StatefulWidget {
  const AddTranscation({super.key});

  @override
  State<AddTranscation> createState() => _AddTranscationState();
}

class _AddTranscationState extends State<AddTranscation> {
  List<AccountModel> accounts = [];
  List<TransactionModel> transaction = [];

  @override
  void initState() {
    loadData();
    loadDataTrans();
  }

  Future<void> loadData() async {
    List<AccountModel> res = await loadAccountData();
    setState(() {
      accounts = res;
    });
  }

  Future<void> loadDataTrans() async {
    List<TransactionModel> res = await loadTransactionsData();
    setState(() {
      transaction = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    //String selectedAccount;

    return Scaffold(
        appBar: AppBar(
          title: Text('Add Transaction'),
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 10,
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Statement'),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Date'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: DropdownButtonFormField<String>(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Account',
                      ),
                      onChanged: (value) {},
                      items: accounts.map<DropdownMenuItem<String>>(
                          (AccountModel account) {
                        return DropdownMenuItem<String>(
                          value: account.title,
                          child: Text(account.title),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: DropdownButtonFormField<String>(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expenses',
                      ),
                      onChanged: (value) {},
                      items: transaction.map<DropdownMenuItem<String>>(
                          (TransactionModel transactions) {
                        return DropdownMenuItem<String>(
                          value: transactions.type,
                          child: Text(transactions.type),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Amount in Nu.'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Add image for the bill'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                // margin: EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Set border radius
                    ),
                    elevation: 4, // Set elevation
                    padding: EdgeInsets.symmetric(vertical: 20),
                    // Background color
                  ),
                ),
              ),
            )
          ],
        )));
  }
}    






















// import 'package:flutter/material.dart';

// class AddTranscation extends StatefulWidget {
//   const AddTranscation({super.key});

//   @override
//   State<AddTranscation> createState() => _AddTranscationState();
// }

// class _AddTranscationState extends State<AddTranscation> {
//   String? _selectedItem; //====for dropdown account filed===//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Add Transaction'),
//         ),
//         body: Container(
//             child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: 'Statement'),
//                 readOnly: true,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: 'Date'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               // child: TextFormField(
//               //   decoration: InputDecoration(
//               //       border: OutlineInputBorder(), labelText: 'Account'),
//               // ),
//               child: DropdownButton<String>(
//                 value: _selectedItem,
//                 hint: const Text('Account'),
//                 items: <String>['BOB', 'BNB', 'BDBL', 'DK', 'T Bank']
//                     .map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedItem = newValue;
//                   });
//                 },
//                 icon: Icon(Icons.arrow_drop_down, color: Colors.blue),
//                 dropdownColor: Colors.white,
//                 style: TextStyle(color: Colors.blue, fontSize: 16),
//                 underline: Container(
//                   height: 2,
//                   color: Colors.blueAccent,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: 'Expenses'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: 'Amount in Rs.'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Add imgae for the bill'),
//               ),
//             ),
//             Align(child: Center())
//           ],
//         )));
//   }
// }
