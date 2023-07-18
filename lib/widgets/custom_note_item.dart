import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/colors.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Kcolors.kcolor1, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(fontSize: 28, color: Kcolors.kblack),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Build your career with Jihed Ben Ammar",
                style: TextStyle(
                    fontSize: 18, color: Kcolors.kblack.withOpacity(0.35)),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Kcolors.kblack,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'juin,17,2023',
              style: TextStyle(
                  fontSize: 14, color: Kcolors.kblack.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
  }
}
