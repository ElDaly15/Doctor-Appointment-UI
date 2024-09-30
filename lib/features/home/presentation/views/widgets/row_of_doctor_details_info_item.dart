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
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth * 0.05, // 5% of the screen width
        top: 15,
        bottom: 10,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(fistIcon,
                  color: colorsFirst,
                  size:
                      screenWidth * 0.05), // Icon size scales with screen width
              SizedBox(
                  width: screenWidth * 0.01), // Width scales with screen width
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    firstText,
                    style: TextStyles.font18Medium(context).copyWith(
                        color: colorsFirst,
                        fontSize: screenWidth * 0.045), // Scaled font size
                  ),
                ),
              ),
              SizedBox(
                  width: screenWidth * 0.1), // Width scales with screen width
              Icon(secondIcon,
                  color: colorsSecond,
                  size:
                      screenWidth * 0.05), // Icon size scales with screen width
              SizedBox(
                  width: screenWidth * 0.01), // Width scales with screen width
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    secondText,
                    style: TextStyles.font18Medium(context).copyWith(
                        color: colorsSecond,
                        fontSize: screenWidth * 0.045), // Scaled font size
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
