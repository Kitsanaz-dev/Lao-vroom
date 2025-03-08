import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/authen/widget/login_button.dart';
import 'package:lao_vroom/src/view/client/authen/widget/under_login_button.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumberController = TextEditingController();

    return Scaffold(
      backgroundColor: context.color.surface,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              Text(
                S.current.login,
                style: context.typo.headline1.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.primary,
                ),
              ),

              Image.asset(
                'assets/images/login.png',
                width: 400, // Adjust logo size
                height: 400,
              ),

              // TextField
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: S.current.phonenumber,
                    hintStyle: context.typo.subtitle1.copyWith(
                      fontWeight: context.typo.bold,
                      color: context.color.onHintContainer,
                    ),
                    isDense: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  controller: phoneNumberController,
                ),
              ),

              const SizedBox(height: 120),

              //Login Button
              LoginButton(phoneNumberController: phoneNumberController),
              const SizedBox(height: 10),

              //Under login button
              const UnderLoginButton(),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
