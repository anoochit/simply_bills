import 'package:flutter/material.dart';

import 'nav_items.dart';

List<NavigationDestination> destinations =
    List.generate(navItems.length, (index) {
  return NavigationDestination(
    icon: Icon(navItems[index].icon),
    selectedIcon: Icon(navItems[index].selectedIcon),
    label: navItems[index].title,
  );
});
