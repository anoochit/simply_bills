import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/create_invoice_controller.dart';

class CreateInvoiceView extends GetView<CreateInvoiceController> {
  const CreateInvoiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Invoice'),
        surfaceTintColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateInvoiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
