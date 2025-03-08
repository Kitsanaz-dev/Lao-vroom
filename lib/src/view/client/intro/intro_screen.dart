import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/intro/get_started.dart';
import 'package:lao_vroom/src/view/client/intro/page/first_page.dart';
import 'package:lao_vroom/src/view/client/intro/page/second_page.dart';
import 'package:lao_vroom/src/view/client/intro/page/third_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        // First Page
        PageViewModel(
          titleWidget: const FirstPage(),
          body: "",
        ),

        // Second Page
        PageViewModel(
          titleWidget: const SecondPage(),
          body: "",
        ),

        // Third (Last) Page
        PageViewModel(
          titleWidget: const ThirdPage(),
          body: "",
        ),
      ],
      
      globalBackgroundColor: context.color.surface,
      showBackButton: true,
      showNextButton: true,
      back: Text(
        S.current.back,
        style: context.typo.headline3.copyWith(
          fontWeight: context.typo.bold,
          color: context.color.primary,
        ),
      ),
      next: Text(
        S.current.next,
        style: context.typo.headline3.copyWith(
          fontWeight: context.typo.bold,
          color: context.color.primary,
        ),
      ),
      done: Text(
        S.current.done,
        style: context.typo.headline3.copyWith(
          fontWeight: context.typo.bold,
          color: context.color.primary,
        ),
      ),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.black,
        color: Colors.grey,
        size: Size(10, 10),
        activeSize: Size(12, 12),
      ),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const GetStarted(),
          ),
        );
      },
    );
  }
}
