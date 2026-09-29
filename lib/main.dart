import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/bottom_nav.dart';
import 'screens/home.screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const TokoNidaApp());
}

class TokoNidaApp extends StatelessWidget {
  const TokoNidaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Nida',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C63FF),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
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