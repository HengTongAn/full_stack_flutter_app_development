import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/Apps_Clone/search_page.dart';
import 'package:full_stack_flutter_app_development/Apps_Clone/settings_page.dart';
import 'home_page.dart';
import 'notifications_page.dart';

List<Map<String, dynamic>> profilesList = [
  {
    'name': 'Meng Heng',
    'profileLink': "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  },
  {
    'name': 'Van Ngeth',
    'profileLink': "https://scontent.fpnh22-2.fna.fbcdn.net/v/t39.30808-1/556937941_1448166022960043_1960717127983401382_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=102&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHv_NuyhdXoeJJhBQXZGjpI4eDLZf8y6Szh4Mtl_zLpLDERWMPX0dcO3Ll8evqI8WBJS0E4ycLpi5AQYdH3NJSl&_nc_ohc=WJH1KW8M8AwQ7kNvwHF9mYG&_nc_oc=AdnqCU_J9gDubqfmBdC8Y_494BSYlonIGtsgZLDjl7BtfwcPeMv7diSFlGEAUnxOu84&_nc_zt=24&_nc_ht=scontent.fpnh22-2.fna&_nc_gid=98OSRmFUl41jyREPohuwvg&oh=00_AfqvB8-1yrRu-GUeuu7aKamoq3BHjY96XqxeSDaMTsY-3g&oe=695FB74A",
  },
  {
    'name': 'Nha',
    'profileLink': "https://scontent.fpnh22-2.fna.fbcdn.net/v/t39.30808-1/600412693_980947085092389_11570112301649707_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=109&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeFzE96U-Sbn_WCvhr1RwIl6Zzlft_sb5OdnOV-3-xvk561uI_ZlgoxxQaffqJBQCHdgSK7WAbel8lTJ0htQqfHk&_nc_ohc=0128wsV6udgQ7kNvwGo6JLh&_nc_oc=AdkYhNAWJCiUTg7uyKlkxuyX0mEKN6Xn0qTts5o52OHDsInk0imzboIl6fqBIt7A-3I&_nc_zt=24&_nc_ht=scontent.fpnh22-2.fna&_nc_gid=8vCC9Xb-ThOxoT6BV2RSRg&oh=00_Afrgz24QyPFM6o0GquAMvt7y5I9OB29ufZiETjT1t0ATpQ&oe=695FB95E",
  },
  {
    'name': 'Vannak',
    'profileLink': "https://scontent.fpnh22-1.fna.fbcdn.net/v/t39.30808-6/545332310_803684412144484_7187248887295197727_n.jpg?stp=cp6_dst-jpegr_tt6&_nc_cat=108&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGQx21SFReBdGn4CTu0G6zN5mwbvU6bzrbmbBu9TpvOtq9LvoA7-rwqwoloF4zh51A8t5FW3Quv0cyuIw7hxvSS&_nc_ohc=T4f80FqEChoQ7kNvwF-JAkn&_nc_oc=AdkVnYakFlDXSTGGkzMTcw-wFJ1oAVSwv5oYFdoRyh1lh1Dpd1Z4Th4WZXoSBgX0xXw&_nc_zt=23&se=-1&_nc_ht=scontent.fpnh22-1.fna&_nc_gid=uQYhDt6EO4u6ZFLnl2-HfQ&oh=00_AfoBbZ7fxMdVCYx_mrP3iaKTp77tv8FTzgnnsSloAFsKlQ&oe=695FAD01",
  },
  {
    'name': 'Kim Leang',
    'profileLink': "https://scontent.fpnh22-1.fna.fbcdn.net/v/t39.30808-6/605769686_858984430370327_2848717980150271135_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=105&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeHqxhaw8LEqfrGGrzivpnOW79WJbrQLwfLv1YlutAvB8nKx-2dFkthMe3VX_TfaHvcNUVP-estVmha4kZFUttnT&_nc_ohc=1f3z4B1yVBYQ7kNvwH6X7aV&_nc_oc=AdnexKNO92euW0xGlQ-EkCpqvUezaRXxGHYBtJjzT0WrapEWBuQxWnm8WW0ruiyAbx0&_nc_zt=23&_nc_ht=scontent.fpnh22-1.fna&_nc_gid=gLtt0tQqyH02fvMaYSwvMA&oh=00_AfpVFFNiaEQj1lSnDzZZcRnItEqhl9NIAqIdtFTNCrADzg&oe=695FA64C",
  },
];

class HomePageFacebook extends StatefulWidget {
  const HomePageFacebook({super.key});

  @override
  State<HomePageFacebook> createState() => _HomePageFacebookState();
}

class _HomePageFacebookState extends State<HomePageFacebook> {

  final _screensLst = [
    HomePage(),
    SearchPage(),
    NotificationsPage(),
    SettingsPage(),
  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.add_box_outlined,
              size: 27,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.search_outlined,
              size: 27,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.messenger_outline,
              size: 27,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: profilesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          profilesList[index]['profileLink'],
                        ),
                        radius: 45,
                      ),
                      Text(profilesList[index]['name']),
                    ],
                  ),
                );
              },
            ),
          ),

          Expanded(

            child: _screensLst[pageIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
        ],
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
