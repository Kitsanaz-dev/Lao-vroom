import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Text(
          S.current.chats,
          style: context.typo.headline4.copyWith(
            fontWeight: context.typo.bold,
            color: context.color.subtext,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: const AssetImage("assets/images/avatar.png"),
                backgroundColor: context.color.hint,
              ),
              title: Text(
                "John Doe",
                style: context.typo.headline6.copyWith(
                  fontWeight: context.typo.bold,
                  color: context.color.subtext,
                ),
              ),
              subtitle: Text(
                "John: Thank you - 5:56PM",
                style: context.typo.body3.copyWith(
                  fontWeight: context.typo.regular,
                  color: context.color.inactive,
                ),
              ),
              trailing: const Icon(Icons.check_circle),
            );
          },
        ),
      ),
    );
  }
}
