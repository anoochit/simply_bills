import 'package:flutter/widgets.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

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
