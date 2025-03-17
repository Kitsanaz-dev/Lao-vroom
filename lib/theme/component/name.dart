import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Name extends StatelessWidget {
  const Name({
    super.key,
    required this.name,
    required this.carData,
  });

  final String name;
  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return Text(
      carData['name'],
      overflow: TextOverflow.ellipsis,
      style: context.typo.body2.copyWith(
        fontWeight: context.typo.extrabold,
        color: context.color.subtext,
      ),
    );
  }
}
