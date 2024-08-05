import 'package:flutter/material.dart';

import '../models/nav_item.dart';

final serviceItems = [
  NavItem(
    title: 'Electric',
    icon: Icons.electric_bolt_outlined,
    selectedIcon: Icons.electric_bolt,
  ),
  NavItem(
    title: 'Water',
    icon: Icons.water_drop_outlined,
    selectedIcon: Icons.water_drop,
  ),
  NavItem(
    title: 'Trash',
    icon: Icons.delete_outline,
    selectedIcon: Icons.delete,
  ),
  NavItem(
    title: 'Gas',
    icon: Icons.propane_tank_outlined,
    selectedIcon: Icons.propane_tank,
  ),
  NavItem(
    title: 'Cleaning',
    icon: Icons.cleaning_services_outlined,
    selectedIcon: Icons.cleaning_services,
  )
];
