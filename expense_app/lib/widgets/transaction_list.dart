import 'package:expense_app/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    tx.price.toString() + " €",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat.yMMMMd().format(tx.date),
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ],
            ),
          );
        }).toList()); 

  }
}
