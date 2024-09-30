import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_circle_avatar.dart';

class ProfileViewBodyHeader extends StatelessWidget {
  const ProfileViewBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading:
          const CustomCircleAvatar(image: Assets.imagesDoctor1, isPng: true),
      title: Text(
        'Dr. Imran Syahir',
        style: TextStyles.font20SemiBold(context)
            .copyWith(color: AppColors.textMainTitles),
      ),
      subtitle: Text(
        'General Doctor',
        style: TextStyles.font18Regular(context)
            .copyWith(color: const Color(0Xff8696BB)),
      ),
    );
  }
}
