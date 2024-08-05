import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddressButtonItemView extends GetView {
  const AddressButtonItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // name
              // address
              // status & current bills
            ],
          ),
        ),
      ),
    );
  }
}
