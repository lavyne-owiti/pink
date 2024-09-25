import 'package:flutter/material.dart';
import 'package:newprojo/features/transaction/presentation/widgets/transaction_list.dart';

class HistoricalTransactionScreen extends StatelessWidget {
  const HistoricalTransactionScreen({super.key, required this.historyTitle});
  final String historyTitle;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(historyTitle),
      ),
      body: Padding(padding:  const EdgeInsets.all(8.0),
        child: TransactionList(),)
    );
  }
}
