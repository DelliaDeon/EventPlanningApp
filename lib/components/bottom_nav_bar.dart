import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(icon: Icons.schedule),
          GButton(icon: Icons.search),
          GButton(icon: Icons.home),
          GButton(icon: Icons.calendar_month),
          GButton(icon: Icons.settings),
        ],
      ),
    );
  }
}
