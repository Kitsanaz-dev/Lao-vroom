import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rate,
    required this.carData,
  });

  final Map<String, dynamic> carData;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.5,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: context.color.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            carData['rate'],
            style: context.typo.body3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.onPrimary,
            ),
          ),
          Icon(
            Icons.star,
            color: context.color.onPrimary,
            size: 14,
          ),
        ],
      ),
    );
  }
}
