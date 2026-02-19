import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class BottomNavigationBarTest extends StatefulWidget {
  const BottomNavigationBarTest({super.key});

  @override
  State<BottomNavigationBarTest> createState() => _BottomNavigationBarTestState();
}

class _BottomNavigationBarTestState extends State<BottomNavigationBarTest> {
  final int _selectedPage = 0;
  final List<Widget> _pages = [
    Center(child: Text("Home"),),
    Center(child: Text("Favorite"),),
    Center(child: Text("History"),),
    Center(child: Text("Shop"),),
    Center(child: Text("Profile"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shadeBlack,
      extendBody: true,
      body: _pages[_selectedPage],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
        height: 65,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Container(
              decoration: BoxDecoration(
                color: white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: white.withValues(alpha: 0.3),
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call, color: blue,),
                  Icon(Icons.person, color: blue,),
                  Icon(Icons.chat_bubble, color: blue,),
                  Icon(Icons.settings, color: blue,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
