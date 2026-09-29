import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';
import '../components/custom_buttoon.dart';
import '../components/profile_avatar.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget profileMenu(
    IconData icon,
    String title,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: AppColors.primary,
        ),
        title: Text(
          title,
          style: AppTextStyles.body.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: AppColors.textGrey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
        subtitle: 'Informasi mahasiswa',
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const CustomProfileAvatar(
              imageUrl: 'https://i.pravatar.cc/300?img=47',
              radius: 60,
            ),

            const SizedBox(height: 16),

            Text(
              'Layyinnida Indah Ramadhan',
              textAlign: TextAlign.center,
              style: AppTextStyles.title,
            ),

            Text(
              '3337240065',
              style: AppTextStyles.caption,
            ),

            const SizedBox(height: 28),

            profileMenu(
              Icons.school_outlined,
              'Informatika',
            ),

            profileMenu(
              Icons.calendar_today_outlined,
              'Angkatan 2024',
            ),

            profileMenu(
              Icons.email_outlined,
              'nida@email.com',
            ),

            const Spacer(),

            CustomPrimaryButton(
              text: 'Edit Profile',
              icon: Icons.edit_outlined,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Fitur edit profile belum tersedia',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}