import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });
  final String icon;
  final String title;
  final String subtitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            /// Start Icon
            SvgPicture.asset(
              icon,
              // ignore: deprecated_member_use
              color: context.color.text,
            ),
            const SizedBox(width: 8),

            /// Title
            Expanded(
              child: Text(
                title,
                style: context.typo.headline5,
              ),
            ),
            const SizedBox(width: 8),

            /// Subtitle
            Text(
              subtitle,
              style: context.typo.subtitle1.copyWith(
                color: context.color.text,
              ),
            ),
            const SizedBox(width: 8),

            /// End Icon
            SvgPicture.asset(
              'assets/icons/chevron-right.svg',
              // ignore: deprecated_member_use
              color: context.color.text,
            ),
          ],
        ),
      ),
    );
  }
}
