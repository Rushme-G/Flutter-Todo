import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/domain/account/account_model.dart';
import 'package:flutter/material.dart';

// class AccountModel {
//   num id;
//   String createdAt;
//   String updatedAt;
//   String title;
//   // String note;
//   String? img;
//   num openingBalance;

//   AccountModel({
//     this.id = 1,
//     this.createdAt = "",
//     this.updatedAt = "",
//     this.title = "",
//     this.img = null,
//     this.openingBalance = 0,
//   });
// }

class AccountCard extends StatelessWidget {
  AccountModel account;
  AccountCard(this.account);

  // AccountModel account = AccountModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 250,
      // color: Colors.blueAccent,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    account.title,
                    style: TypoStyles().kPageHeader,
                  ),
                  CircleAvatar(backgroundImage: NetworkImage(account.img))
                ],
              ),
            ),
          ),
          Container(
            // color:Colors.white,
            margin: EdgeInsets.only(bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nu ${account.openingBalance}',
                  style: TypoStyles().kPageHeader,
                ),
                Text(
                  'Nu. ${account.openingBalance} this month',
                  style: TypoStyles().kCardSubHeader,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
