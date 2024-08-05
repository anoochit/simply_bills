import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LabelDeviderView extends GetView {
  const LabelDeviderView({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
