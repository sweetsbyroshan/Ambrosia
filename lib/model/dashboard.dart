import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';

class Dashboard {
  final String title, value, desc;
  final IconData icon;
  final Color color;
  List<Dashboard> dash = [];

  Dashboard({
    this.title,
    this.value,
    this.desc,
    this.icon,
    this.color
  });
  void getDashboard() {
    dash.add(new Dashboard(
        color: ThemeColors.primaryBlue,
        icon: Icons.traffic,
        title: 'Total Traffic',
        value: '97,695',
        desc: '+7.10 Since last month'));
    dash.add(new Dashboard(
        color: ThemeColors.primaryBlue,
        icon: Icons.person,
        title: 'New Users',
        value: '313',
        desc: '+6.7 Since last month'));
    dash.add(new Dashboard(
        color: ThemeColors.secondaryCyan,
        icon: Icons.attach_money,
        title: 'Sales',
        value: '71,292',
        desc: '+30.4 Since last month'));
    dash.add(new Dashboard(
        color: ThemeColors.secondaryRed,
        icon: Icons.score,
        title: 'Performance',
        value: '14.10%',
        desc: '+23 Since last month'));
  }
}
