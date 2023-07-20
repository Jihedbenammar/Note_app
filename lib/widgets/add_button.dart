import 'package:flutter/material.dart';

import 'custom_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) => const CustomBottomSheet());
      },
      child: const Icon(Icons.add),
    );
  }
}
