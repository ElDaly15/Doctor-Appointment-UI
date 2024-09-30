import 'package:doctor_app/features/calendar/presentation/views/widgets/calendar_item.dart';
import 'package:flutter/material.dart';

class ListViewOfCalendarItems extends StatefulWidget {
  const ListViewOfCalendarItems({super.key});

  @override
  State<ListViewOfCalendarItems> createState() =>
      _ListViewOfCalendarItemsState();
}

class _ListViewOfCalendarItemsState extends State<ListViewOfCalendarItems> {
  int currentIndex = 0;
  List<String> shedules = [
    'Upcoming schedule',
    'Previous schedule',
    'Current schedule',
    'Completed schedule',
    'Cancelled schedule'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: CalendarItem(
                title: shedules[index],
                isChecked: index == currentIndex,
              ),
            );
          }),
    );
  }
}
