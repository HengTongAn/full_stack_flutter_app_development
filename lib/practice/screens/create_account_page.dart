import 'package:flutter/material.dart';
import 'login_page.dart';

Widget inputFields({
  required String hint,
  required TextEditingController controller,
  String? Function(String?)? validator
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
    child: TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(
        fontSize: 17,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 17,
          fontStyle: FontStyle.italic,
          color: Colors.black
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.deepPurple,
            style: BorderStyle.solid
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.deepPurple,
            width: 2,
          ),
        ),
      ),
    ),
  );
}

Widget buttons({
  required String text,
  required VoidCallback? onPressed,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
    child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        padding: EdgeInsets.symmetric(horizontal: 155, vertical: 10)
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    ),
  );
}

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color.fromRGBO(0, 75, 251, 100),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                        color: Color.fromRGBO(0, 75, 251, 100),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                inputFields(
                  hint: "Full Name",
                  controller: _username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username is required";
                    }
                    if (value.length < 4) {
                      return "Username is too short";
                    }
                  },
                ),
                inputFields(
                  hint: "E-mail",
                  controller: _email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    if (!value.contains("@")) {
                      return "Enter a valid email";
                    }
                  },
                ),
                inputFields(
                  hint: "Phone Number",
                  controller: _phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Phone number is required";
                    }
                    if (value.length > 10) {
                      return "Phone number cannot be greater than 10 characters";
                    }
                  },
                ),
                inputFields(
                  hint: "Password",
                  controller: _password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is highly required";
                    }
                    if (value.length < 6) {
                      return "Password must be 6+ characters";
                    }
                  },
                ),
                inputFields(
                  hint: "Confirm Password",
                  controller: _confirmPassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Must confirm your password";
                    }
                  },
                ),
                SizedBox(height: 50,),
                buttons(
                  text: "Register",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login Successful!")) ,
                      );
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginAnotherPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(0, 75, 251, 100),
                        padding: EdgeInsets.symmetric(horizontal: 97, vertical: 10)
                    ),
                    child: Text(
                      "Have account? Sign In",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
