import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotificaionBodyView extends GetView {
  const NotificaionBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'NotificaionBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
