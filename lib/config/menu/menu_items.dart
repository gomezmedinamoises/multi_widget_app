import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons', 
    subTitle: 'Multiple buttons in Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Cards', 
    subTitle: 'A card container', 
    link: '/cards', 
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgressIndicators', 
    subTitle: 'General and controlled', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbars and dialogs', 
    subTitle: 'Screen indicators', 
    link: '/snackbars', 
    icon: Icons.info_outline_rounded
  ),

  MenuItem(
    title: 'Animated container', 
    subTitle: 'Animated stateful widget', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank
  ),

  MenuItem(
    title: 'UI controls', 
    subTitle: 'Set of Flutter controls', 
    link: '/ui_controls', 
    icon: Icons.control_point
  ),

  MenuItem(
    title: 'Tutorials', 
    subTitle: 'Introduction to app tutorials', 
    link: '/app_tutorial', 
    icon: Icons.tungsten_outlined
  ),
];