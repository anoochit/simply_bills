import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GridButtonItemView extends GetView {
  const GridButtonItemView({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: constraints.maxWidth / 3.6,
                ),
                const SizedBox(height: 8.0),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
