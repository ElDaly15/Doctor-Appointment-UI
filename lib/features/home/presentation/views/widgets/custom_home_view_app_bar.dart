import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/core/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hello,',
        style: TextStyles.font20Regular(context)
            .copyWith(color: const Color(0xff8696BB)),
      ),
      subtitle: Text(
        'Hi James,',
        style: TextStyles.font22Bold(context)
            .copyWith(color: AppColors.textMainTitles),
      ),
      trailing: const CustomCircleAvatar(
        isPng: false,
        image: Assets.imagesAvatar,
      ),
    );
  }
}
