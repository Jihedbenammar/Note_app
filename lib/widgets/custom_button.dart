import 'package:flutter/material.dart';
import 'package:note_app/constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap, required this.isloading});
  final void Function() ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Kcolors.kcolor2, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isloading == true
              ? const SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(
                    color: Kcolors.kblack,
                  ),
                )
              : const Text(
                  "add",
                  style: TextStyle(color: Kcolors.kblack),
                ),
        ),
      ),
    );
  }
}
