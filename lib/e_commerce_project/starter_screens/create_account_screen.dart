import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text_form_field.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/welcome_screen.dart';

import '../components/text.dart';
import '../constrants/colors.dart';

const List<String> countries = [
  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_Cambodia.svg/960px-Flag_of_Cambodia.svg.png?20251230203952",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1280px-Flag_of_Germany.svg.png",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1280px-Flag_of_France.svg.png",
  "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1280px-Flag_of_the_United_States.svg.png",
  "https://upload.wikimedia.org/wikipedia/commons/2/2e/Flag_of_China.png"
];

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _number = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late var dropdownCountry = countries.first;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("lib/assets/images/bubble 02.png"),
            ),
            Positioned(
              top: 50,
              right: 0,
              child: Image.asset("lib/assets/images/bubble 01.png"),
            ),
            Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 30),
                children: [
                  SizedBox(height: 130,),
                  TextWidget(
                    text: "Create \nAccount",
                    fontFamily: "RalewayBold",
                    fontSize: 52,
                    fontWeight: FontWeight.w700,
                    fontColor: black,
                  ),
                  SizedBox(height: 50,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: DottedBorder(
                      options: CircularDottedBorderOptions(
                        dashPattern: [20, 9],
                        strokeWidth: 2,
                        color: blue,
                        padding: EdgeInsets.all(35)
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
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
                  SizedBox(height: 15,),
                  TextFormFieldWidget(
                    controller: _password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is highly required";
                      }
                      if (value.length < 6) {
                        return "Password must be 6+ characters";
                      }
                    },
                    hintText: "Password",
                    isPasswordVisible: true,
                  ),
                  SizedBox(height: 15,),
                  TextFormFieldWidget(
                    controller: _number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Phone number is required";
                      }
                      if (value.length > 10) {
                        return "Phone number must be 9 or 10 digits long";
                      }
                    },
                    hintText: "Your number",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownCountry,
                              icon: Icon(Icons.keyboard_arrow_down),
                              items: countries.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(3.95),
                                    child: Image.network(
                                      height: 20,
                                      width: 30,
                                      fit: BoxFit.contain,
                                      value,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownCountry = value!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            height: 24,
                            width: 1.5,
                            color: const Color(0xff202020).withAlpha(180),
                          ),
                          SizedBox(width: 12,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Button(
                    text: "Done",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  Cancel(
                    text: "Cancel",
                    onTap: () {
                      print("Canceled");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}