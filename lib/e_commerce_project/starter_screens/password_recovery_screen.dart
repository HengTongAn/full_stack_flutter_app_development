import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/options_button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/password_recovery_code_screen.dart';
import '../components/button.dart';
import '../constrants/colors.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("lib/assets/images/bubble 08.png"),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("lib/assets/images/bubble 07.png"),
            ),

            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.5,
                            spreadRadius: 0.1,
                            color: black
                          ),
                        ],
                      ),
                      child: Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("lib/assets/images/artist-2 1.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextWidget(
                      text: "Password Recovery",
                      fontFamily: "RalewayBold",
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontColor: black,
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: TextWidget(
                        text: "How you would like to restore your password?",
                        fontFamily: "Nunito Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontColor: black,
                      ),
                    ),
                    SizedBox(height: 30,),
                    OptionsButton(
                      isSelected: true,
                      text: "SMS",
                      backgroundColor: softPasteBlue,
                      fontFamily: "RalewayBold",
                      optionBackgroundColor: blue,
                    ),
                    SizedBox(height: 15,),
                    OptionsButton(
                      isSelected: false,
                      text: "Email",
                      backgroundColor: softPastePink,
                      fontColor: black,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Raleway",
                      optionBackgroundColor: softPastePink2,
                    ),
                    SizedBox(height: 120,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Button(
                        text: 'Next',
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => PasswordRecoveryCodeScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Cancel(
                      text: "Cancel",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
