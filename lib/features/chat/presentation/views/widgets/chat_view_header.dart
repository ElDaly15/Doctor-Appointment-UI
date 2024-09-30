import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ChatsViewHeader extends StatelessWidget {
  const ChatsViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Chats',
      style: TextStyles.font20Bold(context)
          .copyWith(color: AppColors.textMainTitles),
    );
  }
}
