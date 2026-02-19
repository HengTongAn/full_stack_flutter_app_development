import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/home_screen.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import '../shop_screen.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  State<BottomNavigationBarCustom> createState() => _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  int _selectedIndex = 0;
  final List _pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    ShopScreen(),
    HomeScreen(),
  ];

  final List<String> _selectedIcons = [
    "lib/assets/e_commerce_project_icons/home (2).png",
    "lib/assets/e_commerce_project_icons/love.png",
    "lib/assets/e_commerce_project_icons/news.png",
    "lib/assets/e_commerce_project_icons/shopping-bag.png",
    "lib/assets/e_commerce_project_icons/person.png",
  ];
  final List<String> _unselectedIcons = [
    "lib/assets/e_commerce_project_icons/home (3).png",
    "lib/assets/e_commerce_project_icons/love (1).png",
    "lib/assets/e_commerce_project_icons/news (1).png",
    "lib/assets/e_commerce_project_icons/shopping-bag (1).png",
    "lib/assets/e_commerce_project_icons/person (1).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 0,),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 0, sigmaX: 0),
              child: Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: shadeGrey.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: white.withValues(alpha: 0.3),
                  ),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedAlign(
                  alignment: Alignment(-1.0 + (_selectedIndex * (2.0 / (_pages.length - 1))), 0),
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.decelerate,
                  child: FractionallySizedBox(
                    widthFactor: 1 / _pages.length,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: blue.withValues(alpha: 0.30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 58,
              child: Row(
                children: List.generate(
                  _pages.length, (index) {
                    bool _isSelected = _selectedIndex == index;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => _selectedIndex = index),
                        child: _isSelected ? Image.asset(
                          _selectedIcons[index],
                          height: 30,
                          width: 30,
                        ) : Image.asset(
                          _unselectedIcons[index],
                          height: 25,
                          width: 25,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
