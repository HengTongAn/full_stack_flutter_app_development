import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class GetUserDataScreen extends StatelessWidget {
  const GetUserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: blue,
        elevation: 0,
        onPressed: () {
          if (kDebugMode) print("Hello, Mae mi nheow!");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
