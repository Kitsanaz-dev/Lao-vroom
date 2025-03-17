import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/theme/component/input_field.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback onSearchIconPressed;
  final TextEditingController textController;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmited;
  final VoidCallback onClear;

  const CustomAppBar({
    super.key,
    required this.textController,
    required this.onSearchIconPressed,
    required this.onChanged,
    required this.onSubmited,
    required this.onClear,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: context.color.onPrimary,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: context.color.hint,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: InputField(
                  controller: widget.textController,
                  onChanged: widget.onChanged,
                  onSubmited: widget.onSubmited,
                  onClear: widget.onClear,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: widget.onSearchIconPressed, // Call function on tap
                child: Icon(
                  Icons.search,
                  color: context.color.subtext,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            color: context.color.subtext,
            onPressed: () {
              // Handle filter icon press
            },
          ),
        ],
      ),
    );
  }
}
