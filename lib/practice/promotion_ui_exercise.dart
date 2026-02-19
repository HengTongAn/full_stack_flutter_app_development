import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 17, 103, 100),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Promotion UI",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            color: Colors.white,
            child: SizedBox(
              height: 135,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Image.asset("lib/assets/images/gift.jpg",),
                    title: Text(
                      "You have 2 Genius rewards",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "10% discounts and so much more!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8.0),
                    child: Text(
                      "You're 5 bookings away from Genius Level 2",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
