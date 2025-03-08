import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/authen/login_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class UnderGetStartedButton extends StatelessWidget {
  const UnderGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.current.q1,
          style: context.typo.body1.copyWith(
            fontWeight: context.typo.regular,
            color: context.color.inactive,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          child: Text(
            S.current.login,
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
