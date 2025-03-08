import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/booking_details_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class RentNowButtonConfirm extends StatelessWidget {
  const RentNowButtonConfirm({
    super.key,
    required this.carData,
  });

  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    // Rent Now Button
    return SizedBox(
      width: 380,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(context.color.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Text(
            S.current.rentnow,
            style: context.typo.headline3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.onPrimary,
            ),
          ),
        ),
        onPressed: () {
          log("Rent now clicked");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => BookingDetailsPage(
                carData: carData,
              ),
            ),
          );
        },
      ),
    );
  }
}
