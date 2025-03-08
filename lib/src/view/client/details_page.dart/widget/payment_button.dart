import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key});

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
            "Proceed to Payment",
            style: context.typo.headline3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.onPrimary,
            ),
          ),
        ),
        onPressed: () {
          log("Payment Clicked");
        },
      ),
    );
  }
}
