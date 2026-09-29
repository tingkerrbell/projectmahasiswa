import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';
import '../components/student_card.dart';
import '../models/mahasiswa.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Mahasiswa> mahasiswaList = [
    Mahasiswa(
      nim: '3337240065',
      nama: 'Layyinnida Indah Ramadhan',
      jurusan: 'Informatika',
      angkatan: '2024',
      email: 'nida@email.com',
      ipk: '3.83',
      imageUrl: 'https://i.pravatar.cc/150?img=47',
    ),
    Mahasiswa(
      nim: '3337240001',
      nama: 'Alya Putri',
      jurusan: 'Informatika',
      angkatan: '2024',
      email: 'alya@email.com',
      ipk: '3.75',
      imageUrl: 'https://i.pravatar.cc/150?img=32',
    ),
    Mahasiswa(
      nim: '3337240002',
      nama: 'Raka Pratama',
      jurusan: 'Sistem Informasi',
      angkatan: '2024',
      email: 'raka@email.com',
      ipk: '3.62',
      imageUrl: 'https://i.pravatar.cc/150?img=12',
    ),
    Mahasiswa(
      nim: '3337240003',
      nama: 'Salsa Amelia',
      jurusan: 'Informatika',
      angkatan: '2024',
      email: 'salsa@email.com',
      ipk: '3.80',
      imageUrl: 'https://i.pravatar.cc/150?img=45',
    ),
    Mahasiswa(
      nim: '3337240004',
      nama: 'Fajar Nugraha',
      jurusan: 'Teknik Komputer',
      angkatan: '2024',
      email: 'fajar@email.com',
      ipk: '3.55',
      imageUrl: 'https://i.pravatar.cc/150?img=11',
    ),
  ];

  void openDetail(
    BuildContext context,
    Mahasiswa mahasiswa,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          mahasiswa: mahasiswa,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Data Mahasiswa',
        subtitle: 'Daftar mahasiswa aktif',
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(14),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.primary,
                  ),
                  hintText: 'Cari mahasiswa...',
                  hintStyle: AppTextStyles.caption,
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 22),

            Text(
              'Daftar Mahasiswa',
              style: AppTextStyles.heading,
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: mahasiswaList.length,
                itemBuilder: (context, index) {
                  final mahasiswa = mahasiswaList[index];

                  return StudentCard(
                    mahasiswa: mahasiswa,
                    onTap: () {
                      openDetail(context, mahasiswa);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}