
import 'package:flutter/material.dart';

import '../screens/transaction_history_screen.dart';

class TransactionForm extends StatefulWidget {
  const TransactionForm({super.key});


  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  // GlobalKey for form validation
  final _formKey = GlobalKey<FormState>();

  // Controllers for the two inputs
  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  // Method to handle form submission
  void _submitForm() {
    // if (_formKey.currentState!.validate()) {
      // If the form is valid, display the input values in a dialog
        // Process data
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Form submitted successfully')),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HistoricalTransactionScreen(historyTitle: 'History List',),
          ),
        );

      // showDialog(
      //   context: context,
      //   builder: (context) {
      //     return AlertDialog(
      //       content: Text('Name: ${nameController.text}\nAmount: ${amountController.text}'),
      //     );
      //   },
      // );
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Name input field
            // Name Input
            Text('Account ID'),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                // labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            // Amaount input field
            Text('Amount'),
            TextFormField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // labelText: 'Amount',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an amount';
                }
                if (double.tryParse(value) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
            const SizedBox(height: 32.0),
            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );

    
  }
}
