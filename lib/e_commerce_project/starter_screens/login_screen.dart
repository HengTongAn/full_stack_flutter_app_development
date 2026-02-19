import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text_form_field.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/password_screen.dart';
import '../constrants/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();

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
            Positioned(
              top: 280,
              right: 0,
              child: Image.asset("lib/assets/images/bubblle 05.png"),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset("lib/assets/images/bubble 06.png"),
            ),
            Form(
              key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 400.0, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "RalewayBold",
                            fontSize: 52,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          "Good to see you back! 🖤",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 19,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        const SizedBox(height: 30,),
                        TextFormFieldWidget(
                          controller: _email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email is required";
                            }
                            if (!value.contains("@")) {
                              return "Enter a valid email";
                            }
                          },
                          hintText: "Email",
                        ),
                        const SizedBox(height: 100,),
                        Button(
                          text: "Next",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => PasswordScreen()),
                              );
                            }
                          },
                        ),
                        const SizedBox(height: 20,),
                        Center(
                          child: Cancel(
                            text: "Cancel",
                            onTap: () {
                              print("Canceled");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
