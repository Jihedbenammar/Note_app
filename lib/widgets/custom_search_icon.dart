import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({required this.icon, required this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                weight: 45,
                color: Colors.white,
              ))),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Kcolors.kwhite.withOpacity(0.07),
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
