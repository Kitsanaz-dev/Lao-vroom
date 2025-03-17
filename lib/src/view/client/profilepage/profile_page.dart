import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/profilepage/log_out_dialog.dart';
import 'package:lao_vroom/theme/component/setting_bottom_sheet.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: context.color.surface,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Your Profile",
          style: context.typo.headline3.copyWith(
            fontWeight: context.typo.bold,
            color: context.color.subtext,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header Row
            Row(
              children: [
                // Profile Avatar
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purple[100],
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.purple[700],
                  ),
                ),
                const SizedBox(width: 16),

                // User Information
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jane Doe",
                      style: context.typo.subtitle1.copyWith(
                        fontWeight: context.typo.bold,
                        color: context.color.subtext,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "+856 20 55555555",
                      style: context.typo.subtitle2.copyWith(
                        fontWeight: context.typo.medium,
                        color: context.color.text,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 4),

            // Settings
            ListTile(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const SettingBottomSheet();
                  },
                );
              },
              contentPadding: const EdgeInsets.all(0),
              leading: Icon(
                Icons.settings,
                color: context.color.text,
              ),
              title: Text(
                S.current.settings,
                style: context.typo.subtitle1.copyWith(
                  fontWeight: context.typo.medium,
                  color: context.color.text,
                ),
              ),
            ),

            // About us
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(0),
              leading: Icon(
                Icons.info_outline,
                color: context.color.text,
              ),
              title: Text(
                "About us",
                style: context.typo.subtitle1.copyWith(
                  fontWeight: context.typo.medium,
                  color: context.color.text,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Logout Button
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 327,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    log("Logout Clicked");
                    showDialog(
                      context: context,
                      builder: (context) {
                        return LogOutDialog(
                          onLogOutPressed: () {},
                        );
                      },
                    );
                    // prefs.clear();
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const OpeningScreen(),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Text(
                    S.current.logout,
                    style: context.typo.headline6.copyWith(
                      fontWeight: context.typo.bold,
                      color: context.color.subtext,
                    ),
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
