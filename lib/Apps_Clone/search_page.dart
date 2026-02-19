import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/Apps_Clone/helpers/search_accounts.dart';

List<SearchAccount> _users = [
  SearchAccount(fullname: "James Saris", username: "james_saris"),
  SearchAccount(fullname: "James Rodriguez", username: "james123"),
  SearchAccount(fullname: "Meng Heng", username: "meng_heng"),
];

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.search_sharp),
                  hintText: "Search",
                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                  hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Searches",
                      style: TextStyle(
                        color: Color.fromRGBO(69, 69, 69, 0.9),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: _users.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final user = _users[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 1),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                            ),
                            title: Text(
                              user.fullname,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "@${user.username}",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(69, 69, 69, 0.8),
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.clear,
                                size: 25,
                                color: Color.fromRGBO(69, 69, 69, 0.8),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Suggestions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(69, 69, 69, 0.9),
                      ),
                    ),
                    SizedBox(height: 10,),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _users.length - 1,
                      itemBuilder: (context, index) {
                        final user = _users[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 1),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                            ),
                            title: Text(
                              user.fullname,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "@${user.username}",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(69, 69, 69, 0.8),
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.clear,
                                color: Color.fromRGBO(69, 69, 69, 0.8),
                                size: 25,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10,),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        "See all results",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(56, 23, 189, 1),
                        ),
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
