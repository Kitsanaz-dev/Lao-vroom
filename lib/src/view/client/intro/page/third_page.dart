import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
              SizedBox(
                width: double.infinity,
                height: 375,
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width * 3.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 175,
                    ),
                    child: Image.asset(
                      'assets/images/intro3.png',
                      fit: BoxFit
                          .contain, // Adjust how the image should be rendered
                    ),
                  ),
                ),
              ),
              Text(
                "${S.current.introhead3}\n${S.current.introhead3newline}",
                style: context.typo.headline2.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.text,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                "${S.current.introbody3}\n${S.current.introbody3newline}",
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
