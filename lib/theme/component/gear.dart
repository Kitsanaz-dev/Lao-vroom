import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Gear extends StatelessWidget {
  const Gear({
    super.key,
    required this.gear,
    required this.carData,
  });

  final String gear;
  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/cargear.png',
          height: 18,
          width: 18,
        ),
        const SizedBox(width: 6),
        Text(
          carData['gear'],
          style: context.typo.body3.copyWith(
            fontWeight: context.typo.medium,
            color: context.color.text,
          ),
        ),
      ],
    );
  }
}
