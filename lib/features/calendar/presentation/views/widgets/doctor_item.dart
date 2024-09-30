import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/core/widgets/custom_circle_avatar.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/row_of_doctor_details_info_item.dart';
import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

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
                'Dr. Imran Syahir',
                style: TextStyles.font22Bold(context)
                    .copyWith(color: AppColors.textMainTitles),
                textAlign: TextAlign.start,
              ),
            ),
            subtitle: Text(
              'General Doctor',
              style: TextStyles.font20Regular(context)
                  .copyWith(color: const Color(0xff8696BB)),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 230, 229, 229),
            thickness: 1,
            endIndent: 25,
            indent: 25,
          ),
          const RowOfDoctorDetailsInfo(
            colorsFirst: Color(0xff8696BB),
            colorsSecond: Color(0xff8696BB),
            firstText: 'Sunday, 12 June',
            secondText: '09:00 AM - 11:00 AM',
            fistIcon: Icons.calendar_today,
            secondIcon: Icons.watch_later_outlined,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 12),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF0F8FF),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 45)),
                onPressed: () {},
                child: Text(
                  'Details',
                  style: TextStyles.font18SemiBold(context)
                      .copyWith(color: AppColors.primaryColor),
                )),
          ),
        ],
      ),
    );
  }
}
