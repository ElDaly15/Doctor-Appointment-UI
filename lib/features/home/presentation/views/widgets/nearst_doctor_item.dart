import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/custom_circle_avatar.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/row_of_doctor_details_info_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class NearstDoctorItem extends StatelessWidget {
  const NearstDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 235, 232, 232),
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
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
                  'Dr. Joseph Brostito',
                  style: TextStyles.font22Bold(context)
                      .copyWith(color: AppColors.textMainTitles),
                  textAlign: TextAlign.start,
                ),
              ),
              subtitle: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Dental Specialist',
                  style: TextStyles.font20Regular(context).copyWith(
                    color: const Color(0xff8696BB),
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff8696BB),
                  ),
                  Text(
                    '1.2 km',
                    style: TextStyles.font18Regular(context).copyWith(
                      color: const Color(0xff8696BB),
                    ),
                  ),
                ],
              )),
          Divider(
            color: const Color(0xFFFFFFFF).withOpacity(0.15),
            thickness: 1,
            endIndent: 25,
            indent: 25,
          ),
          const RowOfDoctorDetailsInfo(
            firstText: '4.8 (120 reviews)',
            fistIcon: Icons.watch_later_outlined,
            colorsFirst: Color(0xffFEB052),
            secondText: 'Open at 17:00',
            secondIcon: Icons.watch_later_outlined,
            colorsSecond: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
