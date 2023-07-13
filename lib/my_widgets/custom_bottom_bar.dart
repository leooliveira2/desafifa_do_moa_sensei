import 'package:desafifa_do_moa/mvp/pages/fifth_page.dart';
import 'package:desafifa_do_moa/mvp/pages/fourth_page.dart';
import 'package:desafifa_do_moa/mvp/pages/home_page.dart';
import 'package:desafifa_do_moa/mvp/pages/one_page.dart';
import 'package:desafifa_do_moa/mvp/pages/two_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  static int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.window,
          ),
          label: "Tela 01",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.window,
          ),
          label: "Tela 02",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.window,
          ),
          label: "Tela 04",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "Tela 05",
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (int index) {
        switch (index) {
          case 0:
            _selectedIndex = 0;
            context.go(OnePage.routeName);
            break;
          case 1:
            _selectedIndex = 1;
            context.go(TwoPage.routeName);

            break;
          case 2:
            _selectedIndex = 2;
            context.go(HomePage.routeName);

            break;
          case 3:
            _selectedIndex = 3;
            context.go(FourthPage.routeName);

            break;
          case 4:
            _selectedIndex = 4;
            context.go(FifthPage.routeName);

            break;
          default:
            _selectedIndex = 2;
            context.go(HomePage.routeName);
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.indigo,
      selectedItemColor: const Color.fromARGB(255, 155, 148, 148),
      unselectedItemColor: Colors.white,
    );
  }
}
