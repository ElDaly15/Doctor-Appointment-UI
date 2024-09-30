import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key, required this.image, required this.text});
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff63B4FF).withOpacity(0.1),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text,
              style: TextStyles.font20SemiBold(context)
                  .copyWith(color: AppColors.primaryColor)),
        ],
      ),
    );
  }
}
