import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItem {
  final int id;
  final IconData icon;
  final String label;

  NavItem({required this.id, required this.icon, required this.label});
}

List<NavItem> navItems = [
  NavItem(id: 0, icon: Icons.home, label: '홈'),
  NavItem(id: 1, icon: FontAwesomeIcons.film, label: '공계 예정',),
  NavItem(id: 2, icon: FontAwesomeIcons.arrowAltCircleDown,
    label: '저장한 콘텐츠 목록',),
];