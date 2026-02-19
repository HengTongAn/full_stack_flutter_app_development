import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("MacBook Pro 14 inch M3"),
        Center(
          child: Image.network(
            width: double.infinity,
            "https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/macbook-pro-14-inch-m3-pro-or-m3.png",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
