import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/bottom_nav_item_selected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onTap; // Add this line

  const CustomBottomNavigationBar(
      {super.key, required this.onTap}); // Update constructor

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 223, 222, 222),
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(0, Assets.imagesHome, 'Home'),
          _buildNavItem(1, Assets.imagesCalendar, 'Calendar'),
          _buildNavItem(2, Assets.imagesMessage, 'Messages'),
          _buildNavItem(3, Assets.imagesProfile, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String image, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
        widget.onTap(index); // Call the callback function
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final scaleAnimation =
              Tween<double>(begin: 0.8, end: 1.0).animate(animation);
          final opacityAnimation =
              Tween<double>(begin: 0.0, end: 1.0).animate(animation);

          return FadeTransition(
            opacity: opacityAnimation,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: child,
            ),
          );
        },
        child: currentIndex == index
            ? SelectedItem(
                key: ValueKey(index), // Unique key for the AnimatedSwitcher
                image: image,
                text: text,
              )
            : SvgPicture.asset(
                image,
                key: ValueKey(index), // Unique key for the AnimatedSwitcher
                width: 30,
              ),
      ),
    );
  }
}
