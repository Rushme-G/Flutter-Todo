import 'package:expenses/domain/transaction/transaction_model.dart';
import 'package:expenses/domain/transaction/transaction_repo.dart';
// import 'package:expenses/domain/account/account_repo.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  // List<AccountModel> accounts = [];
  List<TransactionModel> transaction = [];

  @override
  void initState() {
    // loadData();
    loadDataTrans();
  }

  // Future<void> loadData() async {
  //   List<AccountModel> res = await loadAccountData();
  //   setState(() {
  //     accounts = res;
  //   });
  // }

  Future<void> loadDataTrans() async {
    List<TransactionModel> res = await loadTransactionsData();
    setState(() {
      transaction = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2016/10/21/15/59/sun-1758348_1280.jpg', // Replace with your image URL
                          height: 130, // Set the height of the image
                          // width: double
                          //     .infinity, // Set the width to fill the available space
                          fit: BoxFit.cover, // Adjust the fit of the image
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Account Name'),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: DropdownButtonFormField<String>(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Type',
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
                            labelText: 'Opening Balance'),
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
          ))
        ],
      ),
    );
  }
}
