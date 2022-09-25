import 'package:flutter/material.dart';
import 'package:project_wk16/app/account/view/account_page.dart';
import 'package:project_wk16/app/cart/view/cart_page.dart';
import 'package:project_wk16/app/favourite/view/favourite_page.dart';
import 'package:project_wk16/app/home/view/homescreen.dart';
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
    const CartScreen(),
    const FavouriteScreen(),
    const AccountScreen(),
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
          items:  [
            const BottomNavigationBarItem(
              backgroundColor: subColor,
              icon:  Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon:  Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
         BottomNavigationBarItem(
              backgroundColor: subColor,
              icon:  selectedIndex == 2 ?   const Icon(Icons.favorite): const Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
            const BottomNavigationBarItem(
              icon:  Icon(Icons.account_circle_outlined),
              label: 'Account',
            )
          ]),
    );
  }
}
