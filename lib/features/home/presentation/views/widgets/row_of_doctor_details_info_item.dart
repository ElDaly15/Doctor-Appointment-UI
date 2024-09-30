import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class RowOfDoctorDetailsInfo extends StatelessWidget {
  const RowOfDoctorDetailsInfo({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.fistIcon,
    required this.secondIcon,
    required this.colorsFirst,
    required this.colorsSecond,
  });
  final String firstText, secondText;
  final IconData fistIcon, secondIcon;
  final Color colorsFirst;
  final Color colorsSecond;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22, top: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 40, child: Icon(fistIcon, color: colorsFirst)),
          const SizedBox(width: 4), // Adds spacing between widgets
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                firstText,
                style: TextStyles.font18Medium(context)
                    .copyWith(color: colorsFirst),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
              width: 40,
              child: Icon(
                secondIcon,
                color: colorsSecond,
              )),
          const SizedBox(width: 4), // Adds spacing between widgets
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                secondText,
                style: TextStyles.font20Medium(context)
                    .copyWith(color: colorsSecond),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
