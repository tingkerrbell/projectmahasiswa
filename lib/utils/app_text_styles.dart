import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle title = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static TextStyle heading = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static TextStyle subheading = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static TextStyle body = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.textDark,
  );

  static TextStyle caption = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textGrey,
  );

  static TextStyle button = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}