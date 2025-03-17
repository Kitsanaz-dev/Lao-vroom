import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/authen/register_page.dart';
import 'package:lao_vroom/src/view/client/authen/widget/confirm_button.dart';
import 'package:lao_vroom/src/view/client/authen/widget/under_confirm_button.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String otpCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.vcode,
              style: context.typo.headline3.copyWith(
                fontWeight: context.typo.medium,
                color: context.color.inactive,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              "${S.current.otp}\n${S.current.otpnewline}",
              style: context.typo.body1.copyWith(
                fontWeight: context.typo.regular,
                color: context.color.inactive,
              ),
            ),

            const SizedBox(height: 40),

            // OTP Input Fields
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (value) {
                setState(() {
                  otpCode = value;
                });
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 65,
                fieldWidth: 45,
                activeFillColor: context.color.onPrimary,
                inactiveColor: context.color.onHintContainer,
              ),
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
            ),

            const SizedBox(height: 40),

            // Confirm Button
            ConfirmButton(
              otpCode: otpCode,
            ),
            const SizedBox(height: 16),

            // Resend Code Link
            const UnderConfirmButton(),
          ],
        ),
      ),
    );
  }
}
