import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/core/widgets/custom_circle_avatar.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/row_of_doctor_details_info_item.dart';
import 'package:flutter/material.dart';

class DoctorDetailsItem extends StatelessWidget {
  const DoctorDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(left: 16, top: 12, bottom: 16),
      child: Column(
        children: [
          ListTile(
            leading: const CustomCircleAvatar(
              image: Assets.imagesDoctor1,
              isPng: true,
            ),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                'Dr. Imran Syahir',
                style: TextStyles.font22Bold(context)
                    .copyWith(color: AppColors.textSecondaryTitles),
                textAlign: TextAlign.start,
              ),
            ),
            subtitle: Text(
              'General Doctor',
              style: TextStyles.font20Regular(context)
                  .copyWith(color: AppColors.textColor),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            color: const Color(0xFFFFFFFF).withOpacity(0.15),
            thickness: 1,
            endIndent: 25,
            indent: 25,
          ),
          const RowOfDoctorDetailsInfo(),
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
