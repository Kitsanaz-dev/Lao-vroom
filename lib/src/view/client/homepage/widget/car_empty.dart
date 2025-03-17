import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class CarEmpty extends StatelessWidget {
  const CarEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "No cars found",
        style: context.typo.body1.copyWith(
          fontWeight: context.typo.bold,
          color: context.color.inactive,
        )
      ),
    );
  }
}