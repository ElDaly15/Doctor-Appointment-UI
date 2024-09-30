import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class NearDoctorHeader extends StatelessWidget {
  const NearDoctorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Near Doctor',
        style: TextStyles.font18SemiBold(context)
            .copyWith(color: AppColors.textMainTitles));
  }
}
