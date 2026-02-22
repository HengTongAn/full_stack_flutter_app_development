import 'package:dropdown_flutter/custom_dropdown.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text_form_field.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class GetUserInputScreen extends StatefulWidget {
  const GetUserInputScreen({super.key});

  @override
  State<GetUserInputScreen> createState() => _GetUserInputScreenState();
}

class _GetUserInputScreenState extends State<GetUserInputScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _addrss = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> _dropDownItems = ["Male", "Female", "Others"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "User Input Data",
          fontFamily: "Poppins",
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormFieldWidget(
                controller: _name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  }
                },
                hintText: "Name",
              ),
              const SizedBox(height: 12),
              TextFormFieldWidget(
                controller: _age,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Age is required";
                  }
                },
                hintText: "Age",
              ),
              const SizedBox(height: 12),
              TextFormFieldWidget(
                controller: _addrss,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Address is required";
                  }
                },
                hintText: "Address",
              ),
              const SizedBox(height: 12),
              DropdownFlutter<String>(
                decoration: CustomDropdownDecoration(
                  closedFillColor: veryShadeGrey,
                  expandedFillColor: softBlue,
                  closedSuffixIcon: Icon(
                    Icons.arrow_drop_down_circle_rounded,
                    color: softPastelRed,
                  ),
                  expandedSuffixIcon: Icon(
                    Icons.arrow_drop_up,
                    color: softPastelRed,
                  ),
                  closedBorderRadius: BorderRadius.circular(32),
                  headerStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                  listItemStyle: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                ),
                hintText: 'Select gender',
                items: _dropDownItems,
                initialItem: 'Male',
                onChanged: (value) => print(value),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Button(text: "Save", onPressed: () {
            if (_formKey.currentState!.validate()) {
              
            }
          }),
        ),
        ],
    );
  }
}
