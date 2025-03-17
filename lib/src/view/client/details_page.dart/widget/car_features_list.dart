import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/widget/feature_item.dart';

class CarFeaturesList extends StatelessWidget {
  const CarFeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = context.typo.subtitle1.copyWith(
      fontWeight: context.typo.bold,
      color: context.color.subtext,
    );

    final features = [
      "Luxurious Interior",
      "Advanced Safety Features",
      "MBUX Infotainment System",
      "Rear-Seat Entertainment",
      "Ample Cargo Space",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: features
          .map(
            (feature) => FeatureItem(
              text: feature,
              textStyle: textStyle,
            ),
          ).toList(),
    );
  }
}
