import 'package:flutter/material.dart';

class PracticalRowScreen extends StatelessWidget {
  const PracticalRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Practical Row Screen"),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xfff6f7f7),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 5),
                    spreadRadius: 4,
                    blurRadius: 10,
                  ),
                ]
              ),
              child: Image.network("https://hedmontech.com/wp-content/uploads/2024/05/MacBook-Pro-16-inch-Space-Black.png"),
            ),
            Container(
              width: 150,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.redAccent,
              ),
              child: Text(
                "Jang ah sak!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
