import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BillsBodyView extends GetView {
  const BillsBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'BillsBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
