import 'package:flutter/material.dart';

import '../models/nav_item.dart';

List<NavItem> navItems = [
  NavItem(
    title: 'Home',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  NavItem(
    title: 'Bills',
    icon: Icons.receipt_long_outlined,
    selectedIcon: Icons.receipt_long,
  ),
  NavItem(
    title: 'Notifications',
    icon: Icons.notifications_outlined,
    selectedIcon: Icons.notifications,
  ),
  NavItem(
    title: 'Support',
    icon: Icons.contact_support_outlined,
    selectedIcon: Icons.contact_support,
  ),
];
