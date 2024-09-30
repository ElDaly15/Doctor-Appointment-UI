import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/doctor_details_item.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/nearst_doctor_item.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/row_of_most_comman_featuers.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: SizedBox(),
            ),
            CustomHomeViewAppBar(),
            SizedBox(
              height: 24,
            ),
            DoctorDetailsItem(),
            SizedBox(
              height: 24,
            ),
            CustomSearchTextField(),
            SizedBox(
              height: 24,
            ),
            RowOfMostCommanFeatures(),
            SizedBox(
              height: 24,
            ),
            NearDoctorHeader(),
            SizedBox(
              height: 24,
            ),
            NearstDoctorItem(),
          ],
        ),
      ),
    );
  }
}

class NearDoctorHeader extends StatelessWidget {
  const NearDoctorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Near Doctor',
        style: TextStyles.font18SemiBold(context)
            .copyWith(color: AppColors.textMainTitles));
  }
}
