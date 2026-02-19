import 'package:flutter/material.dart';

class PracticalProductsScreen extends StatelessWidget {
  const PracticalProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Products Screen"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 4),
                          spreadRadius: 4,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://www.radiancecomputer.com/wp-content/uploads/2025/04/MacBook-Pro16-M3.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Pro 16" Chip M3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Space Black'),
                        Text(
                          '\$2,179.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/MacBook-Pro-M4/Macbook-pro-16/space-black-1-17483208281vTwi.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Pro 16" Chip M4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Space Black'),
                        Text(
                          '\$2,599.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/MacBook-Pro-M5/MacBook-Pro-14-M5/silver-1-17635222738CGTs.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Pro 14" Chip M5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Silver'),
                        Text(
                          '\$1,749.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/MacBook-Pro-M2/space-gray-1677564901OJQu7.jpg",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Pro 16" Chip M2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Space Grey'),
                        Text(
                          '\$2,599.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/Macbook-Air-M4-2025/midnight-1748315638vnNUi.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Air 14" Chip M4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Midnight'),
                        Text(
                          '\$1,129.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/Macbook-Air-M4-2025/starlight-1743661331G24Ay.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Air 15" Chip M4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Starlight'),
                        Text(
                          '\$1,499.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/Macbook-Air-M4-2025/midnight-1748315638vnNUi.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Air 14" Chip M4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Midnight'),
                        Text(
                          '\$1,129.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                      left: 5,
                      top: 10,
                      bottom: 10,
                    ),
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://sokly.sgp1.digitaloceanspaces.com/Apple/Macbook/Macbook-Air-M4-2025/starlight-1743661331G24Ay.png",
                          fit: BoxFit.contain,
                          height: 140,
                        ),
                        Text(
                          'MacBook Air 15" Chip M4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('- Starlight'),
                        Text(
                          '\$1,499.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    );
  }
}
