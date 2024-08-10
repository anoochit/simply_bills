import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../data/data/service_button.dart';

class ServiceButtonView extends GetView {
  const ServiceButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemCount: serviceItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(serviceItems[index].icon),
                Text(serviceItems[index].title),
              ],
            ),
          ),
        );
      },
    );
  }
}
