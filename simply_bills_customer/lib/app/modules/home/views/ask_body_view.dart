import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AskBodyView extends GetView {
  const AskBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'AskBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
