import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/setup_new_password_screen.dart';
import 'package:pinput/pinput.dart';
import '../components/text.dart';

class PasswordRecoveryCodeScreen extends StatefulWidget {
  const PasswordRecoveryCodeScreen({super.key});

  @override
  State<PasswordRecoveryCodeScreen> createState() => _PasswordRecoveryCodeScreenState();
}

class _PasswordRecoveryCodeScreenState extends State<PasswordRecoveryCodeScreen> {
  final defaultPinTheme = PinTheme(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      color: shadeBlueSky,
      shape: BoxShape.circle,
    ),
  );
  int _attempt = 0;
  final int _maxAttempt = 3;
  final String _correctPin = "2205";

  void _navigateToSetupNewPasswordScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SetupNewPasswordScreen(),
      ),
    );
  }

  void _showRetrySnackbar() {
    final remaining = _maxAttempt - _attempt;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Wrong code. $remaining ${remaining == 1 ? "attempt" : "attempts"} left",
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 400,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  padding: const EdgeInsets.only(top: 90, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextWidget(
                          text: "You reached out maximum \namount of attempts. \nPlease, try later.",
                          fontColor: black,
                          fontSize: 22,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Button(
                        text: "Okay",
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() => _attempt = 0);
                        },
                        backgroundColor: black1,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: shadeBlack.withAlpha(40),
                    ),
                  ],
                ),
                child: Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(color: verySoftPink, shape: BoxShape.circle),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(color: white, shape: BoxShape.circle),
                        child: Center(
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(color: softPastelRed, shape: BoxShape.circle),
                            child: const Icon(Icons.priority_high, color: Colors.white, size: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFailedAttempts() {
    setState(() {
      _attempt++;
    });

    if (_attempt >= _maxAttempt) {
      _showDialog();
    } else {
      _showRetrySnackbar();
    }
  }

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 43.0),
                  child: Column(
                    children: [
                      Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: shadeBlack,
                              blurRadius: 2.5,
                              spreadRadius: 0.1
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
                              borderRadius: BorderRadius.circular(50),
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
                      SizedBox(height: 15,),
                      TextWidget(
                        text: "Enter 4-digits code we sent you on your phone number",
                        fontFamily: "Nunito Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontColor: black,
                      ),
                      SizedBox(height: 20,),
                      TextWidget(
                        text: "+98*******00",
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontColor: black,
                      ),
                      SizedBox(height: 35,),
                      Pinput(
                        defaultPinTheme: defaultPinTheme,
                        showCursor: false,
                        obscureText: true,
                        obscuringWidget: Icon(
                          Icons.circle,
                          color: blue,
                          size: 20,
                        ),
                        separatorBuilder: (index) => const SizedBox(width: 10,),
                        onCompleted: (pin) {
                          if (pin == _correctPin) {
                            _navigateToSetupNewPasswordScreen();
                          } else {
                            _handleFailedAttempts();
                          }
                        },
                      ),
                      SizedBox(height: 315,),
                      Button(
                        text: "Send Again",
                        onPressed: () {},
                        backgroundColor: pinkAccent,
                      ),
                      SizedBox(height: 25,),
                      Cancel(
                        text: "Cancel",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
