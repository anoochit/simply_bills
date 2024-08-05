import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotificationBodyView extends GetView {
  const NotificationBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'NotificationBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
