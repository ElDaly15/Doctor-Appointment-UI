import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/home/presentation/views/widgets/most_comman_feature_item.dart';
import 'package:flutter/material.dart';

class RowOfMostCommanFeatures extends StatelessWidget {
  const RowOfMostCommanFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MostCommanFeatureItem(
          image: Assets.imagesSun,
          text: 'Covid 19',
        ),
        Spacer(),
        MostCommanFeatureItem(
          image: Assets.imagesProfileAdd,
          text: 'Doctor',
        ),
        Spacer(),
        MostCommanFeatureItem(
          image: Assets.imagesLink,
          text: 'Medicine',
        ),
        Spacer(),
        MostCommanFeatureItem(
          image: Assets.imagesHospital,
          text: 'Hospital',
        ),
      ],
    );
  }
}
