import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/main.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/navbar.dart';
import 'package:lao_vroom/theme/component/toast/toast.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
    required this.otpCode,
  });

  final String otpCode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(context.color.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          child: Text(
            S.current.confirm,
            style: context.typo.headline3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.onPrimary,
            ),
          ),
        ),
        onPressed: () {
          prefs.setBool("isOpening", true);
          Toast.show(context, "Login Success");
          log(otpCode);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Navbar(),
            ),
          );
        },
      ),
    );
  }
}
