import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SupportBodyView extends GetView {
  const SupportBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'SupportBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
