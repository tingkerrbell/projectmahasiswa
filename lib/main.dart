import 'package:flutter/material.dart';

import 'components/bottom_nav.dart';
import 'screens/home.screen.dart';
import 'screens/profile_screen.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const DataMahasiswaApp());
}

class DataMahasiswaApp extends StatelessWidget {
  const DataMahasiswaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Mahasiswa',
      theme: AppTheme.lightTheme,
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    ProfileScreen(),
  ];

  void changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: selectedIndex,
        onItemSelected: changePage,
      ),
    );
  }
}