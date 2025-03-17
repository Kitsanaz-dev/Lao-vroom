import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class UnderConfirmButton extends StatelessWidget {
  const UnderConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${S.current.q3} ",
          style: context.typo.body1.copyWith(
            fontWeight: context.typo.regular,
            color: context.color.inactive,
          ),
        ),
        GestureDetector(
          onTap: () {
            // Resend OTP action
            log("Resend Code");
          },
          child: Text(
            S.current.resend,
            style: context.typo.body1.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.primary,
            ),
          ),
        ),
      ],
    );
  }
}
