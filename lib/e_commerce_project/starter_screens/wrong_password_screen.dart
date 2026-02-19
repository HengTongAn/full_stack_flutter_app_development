import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/password_recovery_screen.dart';
import 'package:pinput/pinput.dart';

class TypeWrongPasswordScreen extends StatefulWidget {
  const TypeWrongPasswordScreen({super.key});


  @override
  State<TypeWrongPasswordScreen> createState() => _TypeWrongPasswordScreenState();
}

class _TypeWrongPasswordScreenState extends State<TypeWrongPasswordScreen> {
  final defaultPinTheme = PinTheme(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: shadeBlueSky
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
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ]
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontColor: black,
                    ),
                    SizedBox(height: 15,),
                    Center(
                      child: Pinput(
                        length: 8,
                        defaultPinTheme: defaultPinTheme,
                        showCursor: false,
                        obscureText: true,
                        obscuringWidget: const Icon(
                          Icons.circle,
                          size: 20,
                          color: redAccent,
                        ),
                        separatorBuilder: (index) => const SizedBox(width: 10),
                      ),
                    ),
                    SizedBox(height: 60,),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PasswordRecoveryScreen(),
                            ),
                          );
                        },
                        child: TextWidget(
                          text: "Forget password?",
                          fontFamily: "Nunito Sans",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontColor: black,
                        ),
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
