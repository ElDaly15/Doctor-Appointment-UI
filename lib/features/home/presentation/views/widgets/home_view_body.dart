import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/doctor_details_item.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/row_of_most_comman_featuers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 20,
            ),
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
        ],
      ),
    );
  }
}
