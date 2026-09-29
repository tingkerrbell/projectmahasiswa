import 'package:flutter/material.dart';

import '../components/custom_buttoon.dart';
import '../components/profile_avatar.dart';
import '../models/mahasiswa.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class DetailScreen extends StatelessWidget {
  final Mahasiswa mahasiswa;

  const DetailScreen({
    super.key,
    required this.mahasiswa,
  });

  Widget infoItem(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.primary,
          ),
          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.caption,
                ),

                const SizedBox(height: 2),

                Text(
                  value,
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Mahasiswa',
          style: AppTextStyles.subheading,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomProfileAvatar(
              imageUrl: mahasiswa.imageUrl,
              radius: 60,
            ),

            const SizedBox(height: 16),

            Text(
              mahasiswa.nama,
              textAlign: TextAlign.center,
              style: AppTextStyles.title,
            ),

            const SizedBox(height: 4),

            Text(
              mahasiswa.nim,
              style: AppTextStyles.caption,
            ),

            const SizedBox(height: 28),

            infoItem(
              Icons.school_outlined,
              'Jurusan',
              mahasiswa.jurusan,
            ),

            infoItem(
              Icons.calendar_today_outlined,
              'Angkatan',
              mahasiswa.angkatan,
            ),

            infoItem(
              Icons.email_outlined,
              'Email',
              mahasiswa.email,
            ),

            infoItem(
              Icons.star_outline,
              'IPK',
              mahasiswa.ipk,
            ),

            const SizedBox(height: 12),

            CustomPrimaryButton(
              text: 'Kembali ke Daftar',
              icon: Icons.arrow_back,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}