import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {super.key, required this.image, required this.isPng});
  final String image;
  final bool isPng;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.backgroundColor,
      radius: 28,
      child: ClipOval(
        child: isPng ? Image.asset(image) : SvgPicture.asset(image),
      ),
    );
  }
}
