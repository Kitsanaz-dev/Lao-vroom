import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 10),
        //Rating score
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: context.color.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                "4.9",
                style: TextStyle(
                  color: context.color.onPrimary,
                ),
              ),
              Icon(
                Icons.star,
                color: context.color.onPrimary,
                size: 16,
              ),
              const SizedBox(width: 4),
            ],
          ),
        ),
        const SizedBox(width: 8),
        //Rating popular tag
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: context.color.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Popular",
            style: TextStyle(
              color: context.color.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
