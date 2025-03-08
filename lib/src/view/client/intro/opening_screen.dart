import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/intro/intro_screen.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the next screen when tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const IntroScreen(),
          ),
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            // Background color
            Container(
              color: context.color.primary, // Light blue color
            ),
            // Centered content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Logo
                  Image.asset(
                    'assets/images/intro.png', // Replace with your logo image
                    width: 450, // Adjust logo size
                    height: 450,
                  ),
                  const SizedBox(height: 8),
                  // App Name
                  Text(
                    S.current.appname,
                    style: context.typo.headline1.copyWith(
                      fontWeight: context.typo.extrabold,
                      color: context.color.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            // Footer text
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  S.current.tap,
                  style: context.typo.subtitle1.copyWith(
                    fontWeight: context.typo.regular,
                    color: context.color.onPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
