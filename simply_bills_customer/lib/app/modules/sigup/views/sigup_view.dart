import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sigup_controller.dart';

class SigupView extends GetView<SigupController> {
  const SigupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SigupView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SigupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
