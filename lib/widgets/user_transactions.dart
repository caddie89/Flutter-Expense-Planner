import 'package:flutter/material.dart';

import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    // placeholder list of transactions - this is not necessarily needed!
    Transaction(
      transactionId: 't1',
      transactionTitle: 'New Shoes',
      transactionAmount: 69.99,
      transactionDate: DateTime.now(),
    ),
    Transaction(
      transactionId: 't2',
      transactionTitle: 'Groceries',
      transactionAmount: 16.53,
      transactionDate: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    // once the transaction has been created, it will not change again
    final newTx = Transaction(
      transactionTitle: txTitle,
      transactionAmount: txAmount,
      transactionDate: DateTime.now(),
      transactionId: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
