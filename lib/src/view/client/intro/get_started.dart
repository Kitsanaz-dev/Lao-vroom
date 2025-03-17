import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/intro/widget/get_started_button.dart';
import 'package:lao_vroom/src/view/client/intro/widget/under_get_started_button.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  S.current.appname,
                  style: context.typo.headline3.copyWith(
                    fontWeight: context.typo.bold,
                    color: context.color.text,
                  ),
                ),

                const SizedBox(height: 125),

                SizedBox(
                  width: double.infinity,
                  height: 275,
                  child: OverflowBox(
                    maxWidth: MediaQuery.of(context).size.width * 1.875,
                    child: Image.asset(
                      'assets/images/getstarted.png',
                      fit: BoxFit
                          .contain, // Adjust how the image should be rendered
                    ),
                  ),
                ),

                Text(
                  S.current.introhead4,
                  style: context.typo.headline2.copyWith(
                    fontWeight: context.typo.bold,
                    color: context.color.text,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),
                
                Text(
                  S.current.introbody4,
                  style: context.typo.body1.copyWith(
                    fontWeight: context.typo.bold,
                    color: context.color.text,
                  ),
                  textAlign: TextAlign.center,
                ),

                const Spacer(),

                //Get Started Button
                const GetStartedButton(),
                const SizedBox(height: 10),

                //Under Get started button
                const UnderGetStartedButton(),
                const SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
