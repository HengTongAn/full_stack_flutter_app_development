import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/Apps_Clone/helpers/posts_class.dart';
import 'package:full_stack_flutter_app_development/Apps_Clone/helpers/stories_class.dart';

List<Stories> _stories = [
  Stories(name: "Your story", imagePath: "lib/assets/me.jpg"),
  Stories(name: "Kim Leang", imagePath: "lib/assets/mnus_sava.jpg"),
  Stories(name: "An Soktola", imagePath: "lib/assets/brother.jpg"),
  Stories(name: "So Ry Pha", imagePath: "lib/assets/mak.jpg"),
  Stories(name: "VanNgeth", imagePath: "lib/assets/ngeth.jpg"),
];

List<Posts> _posts = [
  Posts(
    profileUrl: "https://i0.wp.com/axeanfestival.com/wp-content/uploads/2022/08/vannda-pr-e1706683155784.png?fit=500%2C500&ssl=1",
    username: "Mann Vanda",
    location: "Phnom Penh",
    hours: 5,
    postUrl: "https://liftedasia.com/assets/blog/vannda-concert.jpeg",
    likes: 4.5,
    comments: 45.9,
    reposts: 200,
    shares: 100,
    caption: "Lots of smiles shared, and lots of tears only my friends got to see. This year was full of surprises, laughter, celebrations, love and loss."
  ),
  Posts(
      profileUrl: "https://www.khmertimeskh.com/wp-content/uploads/2019/07/GDevith-1.jpg",
      username: "G-Devit",
      location: "Phnom Penh",
      hours: 2,
      postUrl: "https://yt3.googleusercontent.com/GDrDr9yiwJyDXNgapaccunCnAiAKWBK9HqnoRXAvNMbY79zppfoOnFOqmedThRMIQphx1d2Pgg=s900-c-k-c0x00ffffff-no-rj",
      likes: 99.9,
      comments: 100,
      reposts: 255,
      shares: 850,
      caption: "Most Handsome man alive?"
  ),
  Posts(
      profileUrl: "https://scontent.fpnh22-2.fna.fbcdn.net/v/t39.30808-6/545012798_803684292144496_7699954603809688982_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeE-lut7b-1rcpLECVrbts-65yuqiZ0vSYfnK6qJnS9Jh_R4fsNaqCkf5DIWx-lbTLFao5r8rX0GUlKuBZX_gfHe&_nc_ohc=P9ottxPkarIQ7kNvwEgzcW0&_nc_oc=AdlaZffsyMBXKmU7QnwBHuPw1zJrQKg55_g1yvGRUH-PENnSl_M3IPdWBq8YRMrAquk&_nc_zt=23&_nc_ht=scontent.fpnh22-2.fna&_nc_gid=ZLfe9imIeaKt-HuRrYM-ng&oh=00_AfoTS1DHTnf157hkrZPo991hGdu8aFlQBzpW_DtThM36ow&oe=6962E220",
      username: "Vannak Soth",
      location: "Phnom Penh",
      hours: 9,
      postUrl: "https://scontent.fpnh22-1.fna.fbcdn.net/v/t1.15752-9/582415338_922563767595805_6043378234508303231_n.jpg?stp=dst-jpg_s2048x2048_tt6&_nc_cat=105&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeGCPsI_gYqQWOHDLeJNHZ14yHlK3OXiKorIeUrc5eIqilBXHOshw0KKnNJ4CcclOrY8Fp3CLHUa9N-Ah_lWkMrq&_nc_ohc=hDMovqn4HeIQ7kNvwEqGOQ0&_nc_oc=AdkeYqdDJVq5eDV8SVdBBdBRsGNULd1-_YIVLI53zzP7zTk-zJk3bWyaEaXtwyxJIrA&_nc_zt=23&_nc_ht=scontent.fpnh22-1.fna&oh=03_Q7cD4QEAMzDJN1e5klfkzzS9G9NE3HtE9AESg6daEgYARmUKhw&oe=6984791F",
      likes: 14.5,
      comments: 55,
      reposts: 301,
      shares: 564,
      caption: "Muk lerng tnorng. See hz jg banh tirk kdor dak muk mg hah.🥺"
  ),
  Posts(
      profileUrl: "https://scontent.fpnh22-2.fna.fbcdn.net/v/t39.30808-6/545012798_803684292144496_7699954603809688982_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeE-lut7b-1rcpLECVrbts-65yuqiZ0vSYfnK6qJnS9Jh_R4fsNaqCkf5DIWx-lbTLFao5r8rX0GUlKuBZX_gfHe&_nc_ohc=P9ottxPkarIQ7kNvwEgzcW0&_nc_oc=AdlaZffsyMBXKmU7QnwBHuPw1zJrQKg55_g1yvGRUH-PENnSl_M3IPdWBq8YRMrAquk&_nc_zt=23&_nc_ht=scontent.fpnh22-2.fna&_nc_gid=ZLfe9imIeaKt-HuRrYM-ng&oh=00_AfoTS1DHTnf157hkrZPo991hGdu8aFlQBzpW_DtThM36ow&oe=6962E220",
      username: "Vannak Soth",
      location: "Phnom Penh",
      hours: 9,
      postUrl: "https://scontent.fpnh22-1.fna.fbcdn.net/v/t1.15752-9/582415338_922563767595805_6043378234508303231_n.jpg?stp=dst-jpg_s2048x2048_tt6&_nc_cat=105&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeGCPsI_gYqQWOHDLeJNHZ14yHlK3OXiKorIeUrc5eIqilBXHOshw0KKnNJ4CcclOrY8Fp3CLHUa9N-Ah_lWkMrq&_nc_ohc=hDMovqn4HeIQ7kNvwEqGOQ0&_nc_oc=AdkeYqdDJVq5eDV8SVdBBdBRsGNULd1-_YIVLI53zzP7zTk-zJk3bWyaEaXtwyxJIrA&_nc_zt=23&_nc_ht=scontent.fpnh22-1.fna&oh=03_Q7cD4QEAMzDJN1e5klfkzzS9G9NE3HtE9AESg6daEgYARmUKhw&oe=6984791F",
      likes: 14.5,
      comments: 55,
      reposts: 301,
      shares: 564,
      caption: "Muk lerng tnorng. See hz jg banh tirk kdor dak muk mg hah.🥺"
  ),
];

class InstagramAppClone extends StatefulWidget {
  const InstagramAppClone({super.key});

  @override
  State<InstagramAppClone> createState() => _InstagramAppCloneState();
}

class _InstagramAppCloneState extends State<InstagramAppClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            size: 33,
          ),
        ),
        title: Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "BlueVinylCustom",
            fontSize: 35,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline_sharp,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _stories.length,
            itemBuilder: (context, index) {
              final story = _stories[index];
              return Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 43,
                        backgroundImage: AssetImage(
                          story.imagePath,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      story.name,
                    ),
                  ],
                ),
              );
            }
          ),
        ),
        // posts section
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            final post = _posts[index];
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 15),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                          post.profileUrl
                        ),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.username,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "${post.location} . ${post.hours} Hours Ago",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                Image.network(
                  post.postUrl,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline_sharp,
                            size: 30,
                          ),
                        ),
                        Text(
                          "${post.likes}M",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "lib/assets/chat.png",
                            height: 23,
                            width: 23,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "${post.comments}K",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "lib/assets/refresh.png",
                            height: 23,
                            width: 23,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "${post.reposts}K",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "lib/assets/send.png",
                            height: 23,
                            width: 23,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "${post.shares}K",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      post.caption,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14, height: 1.4),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 30
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}