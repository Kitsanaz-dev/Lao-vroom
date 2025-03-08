// Custom widget for Feature Item with check icon
import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class FeatureItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const FeatureItem({
    required this.text,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      child: SizedBox(
        height: 24,
        child: Row(
          children: [
            Text(
              text,
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyLarge, // Use textStyle or default style
            ),
            const Spacer(),
            Icon(Icons.check, color: context.color.primary),
          ],
        ),
      ),
    );
  }
}
