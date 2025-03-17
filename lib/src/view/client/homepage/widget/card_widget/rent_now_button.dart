import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/booking_details_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class RentNowButton extends StatelessWidget {
  const RentNowButton({
    super.key,
    required this.carData,
  });

  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 103.52,
      height: 25,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            context.color.primary,
          ),
        ),
        onPressed: () {
          log("Rent now clicked");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => BookingDetailsPage(
                carData: carData,
              ),
            ),
          );
        },
        child: Text(
          S.current.rentnow,
          textAlign: TextAlign.center,
          style: context.typo.body3.copyWith(
            fontWeight: context.typo.bold,
            color: context.color.onPrimary,
          ),
        ),
      ),
    );
  }
}
