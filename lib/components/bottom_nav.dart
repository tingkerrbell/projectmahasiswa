// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemSelected,
      backgroundColor: Colors.white,
      elevation: 3,
      indicatorColor: const Color(0xFFE8E6FF),
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(
            Icons.home,
            color: Color(0xFF6C63FF),
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: const Icon(Icons.person_outline),
          selectedIcon: const Icon(
            Icons.person,
            color: Color(0xFF6C63FF),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}