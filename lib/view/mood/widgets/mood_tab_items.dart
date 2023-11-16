// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mood_app/constants/app_colors.dart';
import 'package:mood_app/constants/app_paddings.dart';
import 'package:mood_app/constants/app_text_styles.dart';

class MoodTabItems extends StatelessWidget {
  const MoodTabItems({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
    this.showRedCircle = false,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final VoidCallback onTap;
  final bool? showRedCircle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: defaultPadding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: bgSecondary,
            ),
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  title,
                  style: bodyText1,
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: bodyTextColor,
                ),
              ],
            ),
          ),
        ),
        if (showRedCircle == true)
          const CircleAvatar(
            radius: 4,
            backgroundColor: Colors.red,
          ),
      ],
    );
  }
}
