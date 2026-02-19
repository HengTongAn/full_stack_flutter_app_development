import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {

  bool isActive = false;

  void onPressed() {
    if (kDebugMode) {
      print("TextButton clicked!");
    }
  }

  void onChanged(bool value) {
    if (kDebugMode) {
      if (value == true) {
        print("Checkbox is checked!");
        print("I'm falling in love with you, Kimleang");
        print("");
      } else {
        print("Checkbox is unchecked!");
        print("Would you accept this proposal?");
        print("");
      }
    }

    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Checkbox Testing"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: onPressed,
              child: Text("Click me!")
            ),
            Checkbox(
              value: isActive,
              onChanged: (value) {
                onChanged(value ?? false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

