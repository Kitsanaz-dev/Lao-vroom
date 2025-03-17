import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Fuel extends StatelessWidget {
  const Fuel({
    super.key,
    required this.fuel,
    required this.carData,
  });

  final String fuel;
  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.local_gas_station,
          size: 18,
          color: context.color.text,
        ),
        const SizedBox(width: 6),
        Text(
          carData['fuel'],
          style: context.typo.body3.copyWith(
            fontWeight: context.typo.medium,
            color: context.color.text,
          ),
        ),
      ],
    );
  }
}
