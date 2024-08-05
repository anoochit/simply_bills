import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../data/models/nav_item.dart';
import 'grid_button_item_view.dart';

class GridButtonsView extends GetView {
  const GridButtonsView({super.key, required this.items});

  final List<NavItem> items;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(9.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      children: List.generate(items.length, (index) {
        return GridButtonItemView(
          icon: items[index].icon,
          title: items[index].title,
          onTap: () {
            log('service button tap');
          },
        );
      }),
    );
  }
}
