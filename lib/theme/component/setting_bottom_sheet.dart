import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/theme/component/base_bottom_sheet.dart';
import 'package:lao_vroom/theme/component/tile.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

import 'package:provider/provider.dart';

class SettingBottomSheet extends StatelessWidget {
  const SettingBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    final bool isLightTheme = context.theme.brightness == Brightness.light;
    return BaseBottomSheet(
      child: Column(
        children: [
          /// Theme Tile
          Tile(
            icon: isLightTheme ? 'assets/icons/sunny.svg' : 'assets/icons/moon.svg',
            title: S.current.theme,
            subtitle: isLightTheme ? "light" : "dark",
            onPressed: context.read<ThemeService>().toggleTheme,
          ),
        ],
      ),
    );
  }
}
