import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReportBodyView extends GetView {
  const ReportBodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'ReportBodyView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
