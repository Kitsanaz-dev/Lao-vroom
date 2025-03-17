import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onSubmited,
    required this.onClear,
  });

  final TextEditingController? controller;
  final void Function(String text)? onChanged;
  final void Function(String text)? onSubmited;
  final void Function()? onClear;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late final TextEditingController controller =
      widget.controller ?? TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (value) {
        setState(() {});
        widget.onChanged?.call(value);
      },
      onSubmitted: widget.onSubmited,
      decoration: InputDecoration(
        hintText: S.current.search,
        border: InputBorder.none,
        hintStyle: TextStyle(color: context.color.subtext),
      ),
      style: TextStyle(color: context.color.text),
    );
  }
}
