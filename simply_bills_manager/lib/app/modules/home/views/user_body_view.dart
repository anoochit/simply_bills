import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UserBodyView extends GetView {
  const UserBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'UserBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
