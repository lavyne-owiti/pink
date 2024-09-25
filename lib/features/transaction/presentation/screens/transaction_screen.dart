import 'package:flutter/material.dart';
import 'package:newprojo/features/transaction/presentation/widgets/transaction_form.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key, required this.title});
  final String title;

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
       body: ListView(
         physics: NeverScrollableScrollPhysics(),
         children: [
           TransactionForm()
         ],
       ) ,
    );
  }
}
