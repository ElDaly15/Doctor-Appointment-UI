import 'package:doctor_app/features/calendar/presentation/views/widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class SliverCustomListForDoctorsItem extends StatelessWidget {
  const SliverCustomListForDoctorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: DoctorItem(),
          );
        },
        childCount: 5,
      ),
    );
  }
}
