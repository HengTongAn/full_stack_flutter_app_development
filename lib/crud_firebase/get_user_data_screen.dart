import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GetUserDataScreen extends StatelessWidget {
  const GetUserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) print("Hello, Flutter!");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
