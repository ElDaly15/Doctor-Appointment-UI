import 'package:doctor_app/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/doctor_details_item.dart';
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
