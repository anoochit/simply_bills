import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LabelDeviderView extends GetView {
  const LabelDeviderView({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
