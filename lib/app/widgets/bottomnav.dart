import 'package:flutter/material.dart';
import 'package:project_wk16/app/home/view/homescreen.dart';
import 'package:project_wk16/app/login/view/loginpage.dart';
import 'package:project_wk16/app/signup/view/signup.dart';
import 'package:project_wk16/app/utils/colors.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNav> {
  int selectedIndex = 0;

  final screens = [
    const HomeScreen(),
    const SignUpScreen(),
    const LogInScreen(),
    const SignUpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: iconColor,
          unselectedItemColor: unselectedItemColor,
          backgroundColor: subColor,
          iconSize: 30,
          currentIndex: selectedIndex,
          onTap: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: subColor,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              backgroundColor: subColor,
              icon: Icon(Icons.favorite_border),
              label: 'Favoutite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            )
          ]),
    );
  }
}
