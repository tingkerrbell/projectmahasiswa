import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;

  const CustomPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon != null ? Icon(icon) : const SizedBox.shrink(),
        label: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF6C63FF),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}