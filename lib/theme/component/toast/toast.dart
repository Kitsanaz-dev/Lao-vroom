import 'package:flutter/material.dart';
import 'package:lao_vroom/theme/component/toast/toast_builder.dart';

abstract class Toast {
  static void show(
    BuildContext context,
    String text, {
    Duration duration = const Duration(seconds: 3),
  }) async {
    /// Insert
    final overlay = Overlay.of(context);
    final toast = OverlayEntry(
      builder: (context) => ToastBuilder(
        text: text,
      ),
    );
    overlay.insert(toast);

    /// Remove
    await Future.delayed(duration);
    toast.remove();
  }
}
