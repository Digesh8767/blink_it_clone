import 'package:blink_it/repository/screens/cart/cart_screen.dart';
import 'package:blink_it/repository/screens/category/category_screen.dart';
import 'package:blink_it/repository/screens/home/home_screen.dart';
import 'package:blink_it/repository/screens/print/print_screen.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "homeIcon.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "shopping-bag icon.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "category icon.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "printer icon.png"),
            label: "Print",
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
