import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        color: context.color.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: "\$100",
              style: TextStyle(
                fontSize: 48,
                fontWeight: context.typo.extrabold,
                color: context.color.primary,
              ),
              children: [
                TextSpan(
                  text: " per day",
                  style: context.typo.body1.copyWith(
                    fontWeight: context.typo.bold,
                    color: context.color.inactive,
                  ),
                ),
              ],
            ),
          ),
          DropdownButton<String>(
            value: "Day",
            items: const [
              DropdownMenuItem(
                value: "Day",
                child: Text("Day"),
              ),
              DropdownMenuItem(
                value: "Week",
                child: Text("Week"),
              ),
              DropdownMenuItem(
                value: "Month",
                child: Text("Month"),
              ),
            ],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
