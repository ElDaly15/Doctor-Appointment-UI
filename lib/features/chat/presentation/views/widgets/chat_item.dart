import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Aligns the content to the start
      children: [
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.zero,
          leading: const CustomCircleAvatar(
              image: Assets.imagesDoctor1, isPng: true),
          title: Text(
            'Dr. Imran Syahir',
            style: TextStyles.font18SemiBold(context)
                .copyWith(color: AppColors.textMainTitles),
          ),
          subtitle: Text(
            'Hello, How are you Doctor ?',
            style: TextStyles.font14Regular(context).copyWith(
              color: const Color(0Xff8696BB),
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing: Text(
            '10:30 AM',
            style: TextStyles.font14Regular(context).copyWith(
              color: const Color.fromARGB(255, 72, 86, 119),
            ),
          ),
        ),
      ],
    );
  }
}
