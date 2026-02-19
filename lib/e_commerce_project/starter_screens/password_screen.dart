import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/password_typing_screen.dart';
import 'package:pinput/pinput.dart';

import '../../practice/practical_login_screen.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({super.key});

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: veryShadeGrey,
      borderRadius: BorderRadius.circular(12),
    ),
  );

  late final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  );

  late final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: Color.fromRGBO(234, 239, 243, 1),
    ),
  );

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
              left: 0,
              child: Image.asset("lib/assets/images/bubble 04.png"),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("lib/assets/images/bubble 03.png"),
            ),
            Center(
              child: ListView(
                children: [
                  SizedBox(height: 120,),
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                      boxShadow: [
                        BoxShadow(color: shadeBlack, blurRadius: 5, spreadRadius: 1),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("lib/assets/images/artist-2 1.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextWidget(
                    text: "Hello, MengHeng!!",
                    fontFamily: "RalewayBold",
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontColor: black,
                  ),
                  SizedBox(height: 30,),
                  TextWidget(
                    text: "Type your passcode",
                    fontFamily: "Nunito Sans",
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    fontColor: black,
                  ),
                  SizedBox(height: 30,),
                  Pinput(
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    // validator: (s) {
                    //   return s == '2222' ? null : 'Pin is incorrect';
                    // },
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: false,
                    onCompleted: (value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TypingPasswordScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterDecoration: BoxDecoration(),
      persistentFooterButtons: [
        TextWidget(
          text: "Not you?",
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
    );
  }
}
