import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/authen/widget/continue_button.dart';
import 'package:lao_vroom/src/view/client/authen/widget/under_continue_button.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumberController = TextEditingController();
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();

    return Scaffold(
      backgroundColor: context.color.surface,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const SizedBox(height: 50),
              
              //Register title
              Text(
                S.current.register,
                style: context.typo.headline1.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.primary,
                ),
              ),

              const SizedBox(height: 80),

              // First name TextField
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: S.current.firstname,
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
                  controller: firstNameController,
                ),
              ),

              const SizedBox(height: 20),

              // Last name TextField
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: S.current.lastname,
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
                  controller: lastNameController,
                ),
              ),

              const SizedBox(height: 20),

              // Phone number TextField
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

              const SizedBox(height: 300),

              // Continue Button
              ContinueButton(
                phoneNumberController: phoneNumberController,
                firstNameController: firstNameController,
                lastNameController: lastNameController,
              ),
              const SizedBox(height: 10),

              //under Continue button
              const UnderContinueButton(),
              const SizedBox(height: 60),

            ],
          ),
        ),
      ),
    );
  }
}
