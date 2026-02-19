import 'package:flutter/material.dart';
import 'helpers/ListTileItems.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final List<ListTileItems> _items = [
    ListTileItems(
      icon: Icons.account_circle_rounded,
      title: "Manage Account",
    ),
    ListTileItems(
      icon: Icons.privacy_tip,
      title: "Privacy Settings",
    ),
    ListTileItems(
      icon: Icons.notifications_active_rounded,
      title: "Notifications",
    ),
    ListTileItems(
      icon: Icons.settings,
      title: "App Settings",
    ),
    ListTileItems(
      icon: Icons.info,
      title: "About",
    ),
    ListTileItems(
      icon: Icons.question_mark,
      title: "Help and Support",
    ),
    ListTileItems(
      icon: Icons.logout,
      title: "Log out",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final item = _items[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    bottomLeft: Radius.circular(32),
                  ),
                  child: ListTile(
                    leading: Icon(
                      item.icon,
                      size: 40,
                    ),
                    title: Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                    selected: true,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
