import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UsersBodyView extends GetView {
  const UsersBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'UsersBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
