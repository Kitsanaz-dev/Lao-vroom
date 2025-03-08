import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/navbar.dart';
import 'package:lao_vroom/theme/component/base_dialog.dart';
import 'package:lao_vroom/theme/component/toast/toast.dart';

class RentDialog extends StatelessWidget {
  const RentDialog({
    super.key,
    required this.onRentPressed,
  });

  final void Function() onRentPressed;

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: "Confirm Rental",
      content: Text(
        "Are you sure you want to rent this vehicle for the selected dates?",
        style: context.typo.body2.copyWith(
          fontWeight: context.typo.medium,
          color: context.color.text,
        ),
      ),
      actions: [
        //Confirm
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                context.color.primary,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Navbar(),
                ),
              );
              onRentPressed();
              Toast.show(
                context,
                "Purchased successfully",
              );
            },
            child: Text(
              "Confirm",
              style: context.typo.body1.copyWith(
                fontWeight: context.typo.bold,
                color: context.color.onPrimary,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        //Cancel
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                context.color.hintContainer,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Cancel",
              style: context.typo.body1.copyWith(
                fontWeight: context.typo.bold,
                color: context.color.text,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
