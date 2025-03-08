import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class Seat extends StatelessWidget {
  const Seat({
    super.key,
    required this.seat,
    required this.carData,
  });

  final String seat;
  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/2user.svg',
          height: 18,
          width: 18,
        ),
        const SizedBox(width: 6),
        Text(
          carData['seat'] + " seats",
          style: context.typo.body3.copyWith(
            fontWeight: context.typo.medium,
            color: context.color.text,
          ),
        ),
      ],
    );
  }
}
