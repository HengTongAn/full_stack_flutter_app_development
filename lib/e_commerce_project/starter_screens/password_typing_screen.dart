import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/wrong_password_screen.dart';
import 'package:pinput/pinput.dart';
import '../components/text.dart';
import '../constrants/colors.dart';

class TypingPasswordScreen extends StatelessWidget {
  TypingPasswordScreen({super.key});
  final defaultPinTheme = PinTheme(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      color: shadeBlueSky,
      shape: BoxShape.circle
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                      text: "Type your password",
                      fontFamily: "Nunito Sans",
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      fontColor: black,
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: Pinput(
                        length: 8,
                        obscureText: true,
                        obscuringWidget: const Icon(
                          Icons.circle,
                          size: 20,
                          color: blue,
                        ),
                        defaultPinTheme: defaultPinTheme,
                        separatorBuilder: (index) => const SizedBox(width: 10),
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: false,
                        onCompleted: (pin) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TypeWrongPasswordScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
