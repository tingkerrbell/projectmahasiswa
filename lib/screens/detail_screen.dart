import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_buttoon.dart';
import '../models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Produk',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 320,
              width: double.infinity,
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    product.price,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6C63FF),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    'Deskripsi Produk',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    product.description,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      height: 1.6,
                      color: Colors.grey.shade700,
                    ),
                  ),

                  const SizedBox(height: 30),

                  CustomPrimaryButton(
                    text: 'Tambah ke Keranjang',
                    icon: Icons.shopping_cart_outlined,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${product.name} ditambahkan ke keranjang',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}