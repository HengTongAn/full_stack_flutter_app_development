import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/practice/login_screen_practice.dart';
import 'package:full_stack_flutter_app_development/screens/signup_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => LoginPage(),
                  ),
                );
              }, 
              child: Text("Login"),
            ),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SignupPage(),
                  ),
                );
              }, 
              child: Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
