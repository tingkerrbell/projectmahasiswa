// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../models/mahasiswa.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class StudentCard extends StatelessWidget {
  final Mahasiswa mahasiswa;
  final VoidCallback onTap;

  const StudentCard({
    super.key,
    required this.mahasiswa,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(mahasiswa.imageUrl),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mahasiswa.nama,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.subheading,
                  ),

                  const SizedBox(height: 3),

                  Text(
                    mahasiswa.nim,
                    style: AppTextStyles.caption,
                  ),

                  const SizedBox(height: 3),

                  Text(
                    mahasiswa.jurusan,
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.chevron_right,
              color: AppColors.textGrey,
            ),
          ],
        ),
      ),
    );
  }
}