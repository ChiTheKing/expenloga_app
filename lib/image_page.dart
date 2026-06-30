import 'dart:io';
import 'package:flutter/material.dart';
import 'package:expenloga_app/expense.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    final expense = ModalRoute.of(context)!.settings.arguments as Expense;

    final String? imagePath = expense.imagePath;

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Receipt'),
        centerTitle: true,
        backgroundColor: Colors.black12,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: imagePath == null || imagePath.isEmpty
            ? const Text(
                'Add a receipt for this expense\nand it will be displayed on this page.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              )
            : Image.file(File(imagePath)),
      ),
    );
  }
}
