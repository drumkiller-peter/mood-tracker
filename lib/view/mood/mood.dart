import 'package:flutter/material.dart';
import 'package:mood_app/constants/app_colors.dart';
import 'package:mood_app/constants/app_paddings.dart';
import 'package:mood_app/constants/app_text_styles.dart';
import 'package:mood_app/gen/assets.gen.dart';
import 'package:mood_app/models/mood_items_model.dart';
import 'package:mood_app/view/mood/widgets/mood_tab_items.dart';

class MoodTab extends StatefulWidget {
  const MoodTab({super.key});

  @override
  State<MoodTab> createState() => _MoodTabState();
}

class _MoodTabState extends State<MoodTab> {
  List<MoodItemModel> moodItemModelList = [
    MoodItemModel(
        imagePath: Assets.images.notes.path, title: "Notes & History"),
    MoodItemModel(imagePath: Assets.images.reminder.path, title: "Reminders"),
    MoodItemModel(
        imagePath: Assets.images.pieChart.path, title: "This Week's Summary"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding,
      child: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          Row(
            children: [
              Text(
                "Mood Tracker",
                style: headingBoldText,
              ),
              const Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: bgSecondary,
                child: const Icon(
                  Icons.question_mark_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: bgSecondary,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              children: [
                Text(
                  "Ask your kid",
                  style: bodyText1,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Think about how you are feeling inside?",
                  style: subHeadingBold,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundColor: bodyTextColor,
                  radius: 32,
                  child: Image.asset(
                    Assets.images.smile.path,
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "Pick An Emotion",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 24),
            child: Divider(
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          ...moodItemModelList
              .map(
                (e) => MoodTabItems(
                  imagePath: e.imagePath,
                  title: e.title,
                  onTap: () {},
                  showRedCircle: e.imagePath == Assets.images.pieChart.path,
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
