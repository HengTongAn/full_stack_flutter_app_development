import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/login_screen.dart';
import 'package:full_stack_flutter_app_development/practice/login_screen_practice.dart';
import 'create_account_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 134,
                  width: 134,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: black.withAlpha(16),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0.0, 2)
                      ),
                      BoxShadow(
                          color: black.withAlpha(16),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: Offset(0.0, 2)
                      ),
                    ],
                  ),
                  child: Image.asset("lib/assets/images/logo.png"),
                ),
                SizedBox(height: 21,),
                TextWidget(
                  text: "Shoppe",
                  fontFamily: "RalewayBold",
                  fontSize: 52,
                  fontWeight: FontWeight.w700,
                  fontColor: black,
                ),
                SizedBox(height: 15,),
                TextWidget(
                  text: "Beautiful eCommerce UI Kit \nfor your online store",
                  fontFamily: "Nunito Sans",
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  fontColor: black,
                ),
                SizedBox(height: 170,),
                Button(
                  text: "Let's get started",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "I already have an account",
                      fontFamily: "Nunito Sans",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontColor: black,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blue,
                        shape: CircleBorder(),
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: white,
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
