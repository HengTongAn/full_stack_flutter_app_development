import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Page"), centerTitle: true),
      body: Center(child: Text("Welcome to signup screen"),),
    );
  }
}