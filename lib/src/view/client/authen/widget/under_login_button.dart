import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/authen/register_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class UnderLoginButton extends StatelessWidget {
  const UnderLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.current.q2,
          style: context.typo.body1.copyWith(
            fontWeight: context.typo.regular,
            color: context.color.inactive,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ),
            );
          },
          child: Text(
            S.current.signup,
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
