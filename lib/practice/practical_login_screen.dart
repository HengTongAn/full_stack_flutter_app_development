import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(80),
              child: SizedBox(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/images/shopping_logo.png"),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Shoppe",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                 letterSpacing: 1,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 20, height: 1.8),
                  text: "Beautiful eCommerce UI Kit for your online store",
                ),
              ),
            ),
            SizedBox(height: 150,),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(0, 75, 251, 100),
                padding: EdgeInsets.symmetric(horizontal: 105, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )
              ),
              child: Text(
                "Let's get started",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I already have an account",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 75, 251, 100),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Colors.white,
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
