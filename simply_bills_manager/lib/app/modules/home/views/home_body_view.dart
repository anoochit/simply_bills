import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeBodyView extends GetView {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'HomeBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
