import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_buttoon.dart';
import '../components/custom_app_bar.dart';
import '../components/profile_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
        subtitle: 'Akun pengguna',
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const CustomProfileAvatar(
              imageUrl:
                  'https://i.pravatar.cc/300',
              radius: 55,
            ),

            const SizedBox(height: 16),

            Text(
              'Nida',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'nida@email.com',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 35),

            profileItem(
              Icons.person_outline,
              'Edit Profile',
            ),

            profileItem(
              Icons.shopping_bag_outlined,
              'Pesanan Saya',
            ),

            profileItem(
              Icons.settings_outlined,
              'Pengaturan',
            ),

            const Spacer(),

            CustomPrimaryButton(
              text: 'Logout',
              icon: Icons.logout,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Logout berhasil'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFF6C63FF),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.grey,
        ),
      ),
    );
  }
}