import 'package:flutter/foundation.dart';

// blueprint for a normal dart object
// serves as a model for the data
class Transaction {
  final String transactionId;
  final String transactionTitle;
  final double transactionAmount;
  final DateTime transactionDate;

  // arguments will be named because of {}
  Transaction({
    @required this.transactionId,
    @required this.transactionTitle,
    @required this.transactionAmount,
    @required this.transactionDate,
  });
}
