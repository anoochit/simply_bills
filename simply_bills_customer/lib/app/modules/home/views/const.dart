// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavItem {
  String title;
  IconData icon;
  IconData selectedIcon;
  NavItem({
    required this.title,
    required this.icon,
    required this.selectedIcon,
  });
}

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
    title: 'Ask',
    icon: Icons.contact_support_outlined,
    selectedIcon: Icons.contact_support,
  ),
];

List<NavigationDestination> destinations =
    List.generate(navItems.length, (index) {
  return NavigationDestination(
    icon: Icon(navItems[index].icon),
    selectedIcon: Icon(navItems[index].selectedIcon),
    label: navItems[index].title,
  );
});

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
