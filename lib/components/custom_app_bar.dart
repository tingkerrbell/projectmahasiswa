import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String? subtitle;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.subtitle,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackButton,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF222222),
            ),
          ),
          if (subtitle != null)
            Text(
              subtitle!,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}