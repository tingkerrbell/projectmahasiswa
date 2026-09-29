import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_app_bar.dart';
import '../components/product_card.dart';
import '../models/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Product> products = [
    Product(
      name: 'Hoodie Basic',
      price: 'Rp149.000',
      image:
          'https://images.unsplash.com/photo-1556821840-3a63f95609a7',
      description:
          'Hoodie basic dengan bahan nyaman dan cocok digunakan sehari-hari.',
    ),
    Product(
      name: 'Sneakers White',
      price: 'Rp299.000',
      image:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
      description:
          'Sneakers casual dengan desain simpel yang cocok untuk berbagai outfit.',
    ),
    Product(
      name: 'Tote Bag',
      price: 'Rp79.000',
      image:
          'https://images.unsplash.com/photo-1544816155-12df9643f363',
      description:
          'Tote bag minimalis yang praktis digunakan untuk aktivitas sehari-hari.',
    ),
    Product(
      name: 'Watch Classic',
      price: 'Rp399.000',
      image:
          'https://images.unsplash.com/photo-1524805444758-089113d48a6d',
      description:
          'Jam tangan dengan desain klasik dan elegan untuk melengkapi penampilan.',
    ),
  ];

  void openDetail(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Toko Nida',
        subtitle: 'Temukan produk favoritmu',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Produk Pilihan',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.72,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];

                  return CustomProductCard(
                    product: product,
                    onTap: () => openDetail(context, product),
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