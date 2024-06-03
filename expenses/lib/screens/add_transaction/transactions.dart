import 'package:expenses/domain/transaction/transaction_model.dart';
import 'package:expenses/domain/transaction/transaction_repo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  List<TransactionModel> transactions = [];
  @override
  void initState() {
    // super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final res = await loadTransactionsData();
    setState(() {
      transactions = res;
    });
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
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 16),
          //   child: Text(
          //     'Recent transactions',
          //     style: TypoStyles().kSectionHeader,
          //   ),
          // ),
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
