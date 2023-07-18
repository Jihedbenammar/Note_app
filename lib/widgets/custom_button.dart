import 'package:flutter/material.dart';
import 'package:note_app/constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Kcolors.kcolor2, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text(
          "add",
          style: TextStyle(color: Kcolors.kblack),
        ),
      ),
    );
  }
}
