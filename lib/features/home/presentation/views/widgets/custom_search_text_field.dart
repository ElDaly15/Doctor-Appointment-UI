import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12), // Adjust padding for better size control
          child: SvgPicture.asset(
            Assets.searchIcon,
            width: 30, // Set width for the icon
            height: 30, // Set height for the icon
            fit: BoxFit.contain, // Ensure the icon fits properly
          ),
        ),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        hintText: 'Search doctor or health issue',
        hintStyle: TextStyles.font18Medium(context).copyWith(
          color: const Color(0xff8696BB),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16)),
      ),
      cursorColor: AppColors.primaryColor,
      style: TextStyles.font18Medium(context).copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}
