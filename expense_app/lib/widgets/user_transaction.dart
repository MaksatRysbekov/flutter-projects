import 'package:expense_app/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/widgets/new_transaction.dart';
import 'package:expense_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(id: "1", title: "Shoes", price: 44.99, date: DateTime.now()),
    Transaction(
        id: "2", title: "MacBook Air", price: 1199, date: DateTime.now()),
    Transaction(
        id: "3", title: "Keychron K6", price: 64.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txPrice) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        price: txPrice,
        date: DateTime.now());

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(transactions),
    ]);
  }
}
