import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(
          icon,
          size: 30,
        ),
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Kcolors.kwhite.withOpacity(0.07),
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
