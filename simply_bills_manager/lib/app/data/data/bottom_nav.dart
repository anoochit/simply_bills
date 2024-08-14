import 'package:flutter/material.dart';

import '../models/nav_item.dart';

List<NavItem> navItems = [
  NavItem(
    title: 'Home',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
    key: 'home',
  ),
  NavItem(
    title: 'Reports',
    icon: Icons.pie_chart_outline_outlined,
    selectedIcon: Icons.pie_chart,
    key: 'report',
  ),
  NavItem(
    title: 'Bills',
    icon: Icons.receipt_long_outlined,
    selectedIcon: Icons.receipt_long,
    key: 'bills',
  ),
  NavItem(
    title: 'Users',
    icon: Icons.account_circle_outlined,
    selectedIcon: Icons.account_circle,
    key: 'users',
  ),
  NavItem(
    title: 'Address',
    icon: Icons.alternate_email_outlined,
    selectedIcon: Icons.alternate_email,
    key: 'address',
  ),
  NavItem(
    title: 'Notifications',
    icon: Icons.notifications_outlined,
    selectedIcon: Icons.notifications,
    key: 'notification',
  ),
  NavItem(
    title: 'Support',
    icon: Icons.contact_support_outlined,
    selectedIcon: Icons.contact_support,
    key: 'support',
  ),
  NavItem(
    title: 'Profile',
    icon: Icons.account_circle_outlined,
    selectedIcon: Icons.account_circle,
    key: 'profile',
  ),
];
