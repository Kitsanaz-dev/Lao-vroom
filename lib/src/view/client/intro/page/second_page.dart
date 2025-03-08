import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Text(
                S.current.appname,
                style: context.typo.headline3.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.text,
                ),
              ),
              Image.asset(
                'assets/images/intro2.png',
              ),
              Text(
                S.current.introhead2,
                style: context.typo.headline2.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.text,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "${S.current.introbody2}\n${S.current.introbody2newline}",
                style: context.typo.body1.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.text,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
