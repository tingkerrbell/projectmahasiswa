// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

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
            style: AppTextStyles.title,
          ),

          if (subtitle != null)
            Text(
              subtitle!,
              style: AppTextStyles.caption,
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}