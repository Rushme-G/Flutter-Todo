import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/domain/account/account_model.dart';
import 'package:expenses/domain/account/account_repo.dart';
import 'package:expenses/screens/common/account_card.dart';
import 'package:flutter/material.dart';

class SummaryAccounts extends StatefulWidget {
  const SummaryAccounts({super.key});

  @override
  State<SummaryAccounts> createState() => _SummaryAccountsState();
}

class _SummaryAccountsState extends State<SummaryAccounts> {
  List<AccountModel> accounts = [];

  @override
  void initState() {
    loadData();
  }

  Future loadData() async {
    final res = await loadAccountData();
    setState(() {
      accounts = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Current balances',
              style: TypoStyles().kSectionHeader,
            ),
          ),
          Container(
            height: 110,
            margin: EdgeInsets.only(bottom: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: accounts
                    .map(
                      (val) => AccountCard(val),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// class SummaryAccounts extends StatefulWidget {
//   const SummaryAccounts({super.key});

//   @override
//   State<SummaryAccounts> createState() => _SummaryAccountsState();
// }

// class _SummaryAccountsState extends State<SummaryAccounts> {
//   List<AccountModel> account = [];
//   @override
//   void inittState() {
//     loadData();
//   }

//   Future<void> loadData() async {
//     // List<AccountModel> res = await loadAccountData();
//     final res = await AccountRepo().loadAccountData();
//     setState(() {
//       account = res;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 140,
//       margin: EdgeInsets.only(bottom: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             margin: EdgeInsets.only(bottom: 8),
//             child: Text(
//               'Current balances',
//               style: TypoStyles().kSectionHeader,
//             ),
//           ),
//           Container(
//             height: 100,
//             // color: Colors.amber,
//             margin: EdgeInsets.only(bottom: 8),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: account
//                     .map(
//                       (val) => AccountCard(val),
//                     )
//                     .toList(),
//                 // [
//                 //   AccountCard(),
//                 //   AccountCard(),
//                 //   AccountCard(),
//                 //   AccountCard(),
//                 // ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
