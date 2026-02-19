import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text_form_field.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/welcome_screen.dart';

class SetupNewPasswordScreen extends StatelessWidget {
  SetupNewPasswordScreen({super.key});
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                            color: shadeBlack
                          ),
                        ],
                      ),
                      child: Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("lib/assets/images/artist-2 1.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextWidget(
                      text: "Setup New Password",
                      fontFamily: "RalewayBold",
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontColor: black,
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55.0),
                      child: TextWidget(
                        text: "Please, setup a new password for your account",
                        fontFamily: "Nunito Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontColor: black,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            TextFormFieldWidget(
                              controller: _newPassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is required";
                                }
                                if (value.length < 6) {
                                  return "Password must be 6+ characters";
                                }
                              },
                              hintText: "New Password",
                              borderRadius: BorderRadius.circular(10),
                              isPasswordVisible: true,
                            ),
                            SizedBox(height: 10,),
                            TextFormFieldWidget(
                              controller: _confirmPassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Confirm password is required";
                                }
                                if (value.length < 6) {
                                  return "Password must be 6+ characters";
                                }
                              },
                              hintText: "Confirm Password",
                              borderRadius: BorderRadius.circular(10),
                              isPasswordVisible: true,
                            ),
                            SizedBox(height: 180,),
                            Button(
                              text: "Save",
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (_newPassword.text != _confirmPassword.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: const Text("New password and confirm password is not matched"))
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WelcomeScreen(),
                                      ),
                                    );
                                  }
                                }
                              },
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
