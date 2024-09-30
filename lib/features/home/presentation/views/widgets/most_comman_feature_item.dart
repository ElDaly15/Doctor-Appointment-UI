import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/text_styles.dart';

class MostCommanFeatureItem extends StatelessWidget {
  const MostCommanFeatureItem(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xffFAFAFA),
          child: SvgPicture.asset(
            image,
            width: 30,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyles.font18Medium(context)
              .copyWith(color: const Color(0xff8696BB)),
        )
      ],
    );
  }
}
