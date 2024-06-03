import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/domain/transaction/transaction_model.dart';
import 'package:expenses/domain/transaction/transaction_repo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// class TransactionModel {
//   num id;
//   String createdAt;
//   String updatedAt;
//   String title;
//   String note;
//   String? document;
//   num amount;
//   String type;

//   TransactionModel({
//     this.id = 1,
//     this.createdAt = "",
//     this.updatedAt = "",
//     this.title = "",
//     this.note = '',
//     this.document = null,
//     this.amount = 0,
//     this.type = "EXPENSE",
//   });
// }

class SummaryTransactions extends StatefulWidget {
  const SummaryTransactions({super.key});

  @override
  State<SummaryTransactions> createState() => _SummaryTransactionsState();
}

class _SummaryTransactionsState extends State<SummaryTransactions> {
  List<TransactionModel> transactions = [];
  // TransactionModel transactions = TransactionModel();
  @override
  void initState() {
    // super.initState();
    loadData();
  }

  Future<void> loadData() async {
    // TransactionModel res = await loadTransactionsData();
    final res = await loadTransactionsData();
    setState(() {
      transactions = res;
    });

    // final res = await GetRequest('transaction/me');
    // print(jsonDecode(res.body)['data']);
    // List<TransactionModel> temp = [];

    // for (final data in jsonDecode(res.body)['data']) {
    //   temp.add(TransactionModel(
    //     id: data['id'],
    //     createdAt: data['createdAt'],
    //     updatedAt: data['updatedAt'],
    //     title: data['title'],
    //     note: data['note'],
    //     document: data['document'],
    //     amount: data['amount'],
    //     type: data['type'],
    //   ));
    // }

    // setState(() {
    //   transactions = temp;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // color: Colors.amber,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Recent transactions',
              style: TypoStyles().kSectionHeader,
            ),
          ),
          Container(
            child: Column(
              children: transactions
                  .map(
                    (transaction) => ListTile(
                      title: Text(transaction.title),
                      // subtitle: Text(transaction.note),
                      subtitle: Text(DateFormat.yMMMd()
                          .format(DateTime.parse(transaction.createdAt))),
                      trailing: Text('Nu. ${transaction.amount}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: transaction.type == 'EXPENSE'
                                  ? Colors.red
                                  : Colors.green)),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
