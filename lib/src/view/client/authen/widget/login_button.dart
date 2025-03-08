import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/auth_service.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/authen/otp_screen.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.phoneNumberController,
  });

  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final authProvider = context.read<AuthService>();
    return SizedBox(
      width: 350,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(context.color.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Text(
            S.current.log_in,
            style: context.typo.headline3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.onPrimary,
            ),
          ),
        ),
        onPressed: () async {

          final phoneNumber = phoneNumberController.text;

          await authProvider.login(
            phoneNumber: phoneNumber,
          );

          log(phoneNumber);

          log(
            auth.currentUser.toString(),
          );

          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(
              builder: (context) => const OTPScreen(),
            ),
          );
        },
      ),
    );
  }
}
