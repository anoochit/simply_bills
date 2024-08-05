import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerifyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerifyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
