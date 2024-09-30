import 'package:doctor_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:doctor_app/features/calendar/presentation/views/calendar_view.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = 'homeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(initialPage: 0);

  void _onNavItemTapped(int index) {
    _pageController.jumpToPage(index); // Navigate to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeViewBody(),
          CalendarView(),
          Center(child: Text('Calendar2')),
          Center(child: Text('Calendar3')),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
          onTap: _onNavItemTapped), // Pass the callback
    );
  }
}
