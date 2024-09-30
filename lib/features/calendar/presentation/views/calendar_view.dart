import 'package:doctor_app/features/calendar/presentation/views/widgets/calendar_view_body.dart';
import 'package:flutter/material.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CalendarViewBody(),
    );
  }
}
