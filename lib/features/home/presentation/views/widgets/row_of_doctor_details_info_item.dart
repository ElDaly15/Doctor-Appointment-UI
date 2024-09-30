import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class RowOfDoctorDetailsInfo extends StatelessWidget {
  const RowOfDoctorDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22, top: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
              width: 40,
              child: Icon(
                Icons.calendar_today,
                color: AppColors.textSecondaryTitles,
              )),
          const SizedBox(width: 4), // Adds spacing between widgets
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Sunday, 12 June',
                style: TextStyles.font18Medium(context)
                    .copyWith(color: AppColors.textSecondaryTitles),
              ),
            ),
          ),
          const Spacer(),
          const SizedBox(
              width: 40,
              child: Icon(
                Icons.watch_later_outlined,
                color: AppColors.textSecondaryTitles,
              )),
          const SizedBox(width: 4), // Adds spacing between widgets
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '11:00 AM - 12:00 PM',
                style: TextStyles.font20Medium(context)
                    .copyWith(color: AppColors.textSecondaryTitles),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
