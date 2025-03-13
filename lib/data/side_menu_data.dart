import 'package:dashboard_tranking/model/menu_class.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuItems>[
    MenuItems(iconData: Icons.home, title: 'Dashboard'),
     MenuItems(iconData: Icons.person, title: 'Profile'),
     MenuItems(iconData: Icons.run_circle, title: 'Excercise'),
     MenuItems(iconData: Icons.settings, title: 'Settings'),
     MenuItems(iconData: Icons.history, title: 'History'),
     MenuItems(iconData: Icons.logout, title: 'SignOut'),
  ];
}