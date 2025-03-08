import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/details_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
    required this.carData,
  });

  final Map<String, dynamic> carData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 25,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {
          log("Details clicked");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => DetailsPage(
                carData: carData, // Use carData directly
              ),
            ),
          );
        },
        child: Text(
          S.current.details,
          style: context.typo.body3.copyWith(
            fontWeight: context.typo.bold,
            color: context.color.subtext,
          ),
        ),
      ),
    );
  }
}
