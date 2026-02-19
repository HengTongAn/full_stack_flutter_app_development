import 'package:flutter/material.dart';

Widget textFormField(
    String hint, {
    IconData? icon,
    TextEditingController? controller,
    String? Function(String?)? validator,
    }) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
    child: TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        prefixIcon: icon != null ? Icon(icon, color: Colors.white,) : null,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        errorStyle: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
  );
}

Widget button(String text, {IconData? icon, VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
    child: TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 17),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledForegroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          if (icon != null) ...[
            SizedBox(width: 8,),
            Icon(
              icon,
              size: 13,
              color: Colors.white,
            ),
          ],
        ],
      ),
    ),
  );
}

Widget dividerSection() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
    child: Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white.withAlpha(100),
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "or",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white.withAlpha(100),
            thickness: 1,
          ),
        ),
      ],
    ),
  );
}

Widget contactButton() {
  return Padding(
    padding: EdgeInsets.only(top: 40, bottom: 20, ),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
        disabledForegroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white.withAlpha(80),
            width: 2
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        "Contact Support",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    ),
  );
}

Widget footer() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 40),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Colors.white, fontSize: 15),
        children: [
          TextSpan(text: "By using this application, you accept our "),
          TextSpan(
            text: "terms & conditions",
            style: TextStyle(
              color: Color(0xFF3380f4),
              fontWeight: FontWeight.bold
            ),
          ),
          TextSpan(text: " and "),
          TextSpan(
            text: "privacy policy.",
            style: TextStyle(
                color: Color(0xFF3380f4),
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    ),
  );
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3380f4),
              Color(0xFF024ab6),
            ],
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign up with",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "your email address.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textFormField(
                "Type your email here",
                icon: Icons.email,
                controller: _email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  if (!value.contains("@")) {
                    return "Enter a valid email";
                  }
                }
              ),
              textFormField(
                icon: Icons.key_outlined,
                "Enter password",
                controller: _password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }
                  if (value.length < 6) {
                    return "Password must be 6+ characters";
                  }
                }
              ),
              textFormField(
                "Confirm your password",
                controller: _confirmPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Confirm password is required";
                  }
                }
              ),
              button(
                "Get Started",
                icon: Icons.arrow_forward_ios,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login successful!"))
                    );
                  }
                }
              ),
              dividerSection(),
              button("I already have an account"),
              contactButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
