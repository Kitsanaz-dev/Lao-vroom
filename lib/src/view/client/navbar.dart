import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/chatpage/chatpage.dart';
import 'package:lao_vroom/src/view/client/homepage/homepage_view.dart';
import 'package:lao_vroom/src/view/client/profilepage/profile_page.dart';
import 'package:lao_vroom/src/view/client/searchpage/search_page.dart';
import 'package:lao_vroom/util/lang/generated/l10n.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomepageView(),
          SearchPage(),
          // AddPage(),
          Chatpage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (newIndex) {
              // Handle middle button press to navigate without updating index
              // if (newIndex == 2) {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const AddPage(),
              //     ),
              //   );
              // } else {
                setState(() {
                  currentIndex = newIndex;
                });
              // }
            },
            selectedItemColor: context.color.primary,
            unselectedItemColor: context.color.subtext,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: context.color.surface,
            selectedLabelStyle: context.typo.body3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.primary,
            ),
            unselectedLabelStyle: context.typo.body3.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.subtext,
            ),
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home_outlined,
                ),
                label: S.current.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.search_outlined,
                ),
                label: S.current.search,
              ),
              // const BottomNavigationBarItem(
              //   icon: Icon(
              //     Icons.add_circle_outlined,
              //     size: 45,
              //   ),
              //   label: '',
              // ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.chat_bubble_outline,
                ),
                label: S.current.chat,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  CupertinoIcons.profile_circled,
                ),
                label: S.current.you,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
