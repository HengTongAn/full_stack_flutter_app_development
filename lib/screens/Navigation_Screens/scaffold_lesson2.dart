import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/Reels_Screen.dart';
import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/friends_screen.dart';
import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/home_screen.dart';
import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/marketplace_screen.dart';
import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/menu_screen.dart';
import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/notifications_screen.dart';

class ScaffoldPractice2 extends StatefulWidget {
  const ScaffoldPractice2({super.key});

  @override
  State<ScaffoldPractice2> createState() => _ScaffoldPractice2State();
}

class _ScaffoldPractice2State extends State<ScaffoldPractice2> {
  final _screenList = [
    HomeScreen(),
    ReelsScreen(),
    FriendsScreen(),
    MarketplaceScreen(),
    NotificationsScreen(),
    MenuScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xDAF5F5F5),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network("https://www.pngplay.com/wp-content/uploads/12/User-Avatar-Profile-Clip-Art-Transparent-PNG.png"),
              accountName: Text("An Tongheng"),
              accountEmail: Text("henggk64@gmail.com"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text("Exchange Rate"),
                leading: Icon(Icons.currency_exchange),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text("More Products"),
                leading: Icon(Icons.add_home),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text("Contact Us"),
                leading: Icon(Icons.phone_in_talk_outlined),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text("Language"),
                leading: Icon(Icons.language),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.blue,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text("Sign out"),
                leading: Icon(Icons.logout_outlined),
                iconColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Scaffold Practice"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: _screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Marketplace",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
      ),
    );
  }
}
