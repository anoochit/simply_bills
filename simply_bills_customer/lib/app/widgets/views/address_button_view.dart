import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddressButtonView extends GetView {
  const AddressButtonView({super.key, required this.items});

  // TODO : change to list address
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width * 2 / 3.6,
      child: PageView(
        children: List.generate(items.length, (index) {
          return GestureDetector(
            onTap: () {
              //
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  items[index],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
