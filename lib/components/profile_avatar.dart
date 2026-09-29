import 'package:flutter/material.dart';

class CustomProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const CustomProfileAvatar({
    super.key,
    required this.imageUrl,
    this.radius = 50,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: const Color(0xFFEAE8FF),
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}