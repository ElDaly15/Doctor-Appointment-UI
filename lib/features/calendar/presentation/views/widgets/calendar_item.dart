import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CalendarItem extends StatelessWidget {
  const CalendarItem({
    super.key,
    required this.isChecked,
    required this.title,
  });

  final bool isChecked;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isChecked ? 1.0 : 0.5, // Change opacity based on isChecked
      duration:
          const Duration(milliseconds: 300), // Duration of the fade effect
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isChecked
              ? AppColors.primaryColor.withOpacity(0.1)
              : const Color(0xffFAFAFA),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyles.font18Medium(context).copyWith(
              color:
                  isChecked ? AppColors.primaryColor : const Color(0xff8696BB),
            ),
          ),
        ),
      ),
    );
  }
}
