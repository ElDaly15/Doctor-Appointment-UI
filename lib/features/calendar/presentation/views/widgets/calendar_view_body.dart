import 'package:doctor_app/features/calendar/presentation/views/widgets/custom_sliver_list_for_doctor_items.dart';
import 'package:doctor_app/features/calendar/presentation/views/widgets/list_view_of_calendar_items.dart';
import 'package:flutter/material.dart';

class CalendarViewBody extends StatelessWidget {
  const CalendarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SafeArea(
          child: SizedBox(),
        )),
        SliverToBoxAdapter(child: ListViewOfCalendarItems()),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverCustomListForDoctorsItem(),
        ),
      ],
    );
  }
}
