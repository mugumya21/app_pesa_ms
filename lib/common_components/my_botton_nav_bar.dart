// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        tabBorderRadius: 16,
        tabBackgroundColor: Colors.grey.shade200,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.blue,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.money_outlined,
            text: "Loans",
          )
        ]);
  }
}
