import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Card(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Notifications(
              profileUrl: "https://i1.sndcdn.com/artworks-4SdnwxNnMstsafSs-aYB6Hw-t500x500.jpg",
              reactedUsernames: "Ambatukam, Diana, Francesca and 45 others ",
              others: "liked your post",
              duration: "20 minutes ago",
              icon: Icons.favorite,
              backgroundColor: Colors.red,
            ),
            Notifications(
              profileUrl: "https://i1.sndcdn.com/artworks-4SdnwxNnMstsafSs-aYB6Hw-t500x500.jpg",
              reactedUsernames: "Ambatukam ",
              others: "commented on the status you shared.",
              duration: "25m",
              icon: Icons.messenger_outlined,
              backgroundColor: Colors.green,
            ),
            Notifications(
              profileUrl: "https://hips.hearstapps.com/hmg-prod/images/Diana_GettyImages-515185764.jpg?crop=1xw:1.0xh;center,top&resize=640:*",
              reactedUsernames: "Diana, Francesca, Rose and 44 others ",
              others: "liked your post.",
              duration: "40m",
              icon: Icons.favorite,
              backgroundColor: Colors.red,
            ),
            Notifications(
              profileUrl: "https://hips.hearstapps.com/hmg-prod/images/Diana_GettyImages-515185764.jpg?crop=1xw:1.0xh;center,top&resize=640:*",
              reactedUsernames: "Diana and Francesca ",
              others: "shared your post.",
              duration: "41m",
              icon: Icons.share,
              backgroundColor: Colors.blueAccent,
            ),
            Notifications(
              profileUrl: "https://freepngimg.com/save/141114-logo-circle-facebook-free-photo/512x512",
              reactedUsernames: "",
              others: "You have memories to look back on today.",
              duration: "1h",
              icon: Icons.facebook,
              backgroundColor: Colors.deepOrange,
            ),
            Notifications(
              profileUrl: "https://pbs.twimg.com/profile_images/841904773620211713/6brcxkN9_400x400.jpg",
              reactedUsernames: "National Geographic ",
              others: "recently shared 1 post.",
              duration: "15h",
              icon: Icons.menu_book_outlined,
              backgroundColor: Colors.blueAccent,
            ),
            Notifications(
              profileUrl: "https://scontent.fpnh22-2.fna.fbcdn.net/v/t39.30808-6/464347390_8495870763844427_6607894474574920575_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeE6ZM_iSNY4iKvgbIEXIGZ5_-mQHpoEDIb_6ZAemgQMhlVjqmWluvSVX8bxIUp6RVUcXkSAA_jo3AupRMfJJ5-_&_nc_ohc=w-BPH_pM6ckQ7kNvwHG-eBu&_nc_oc=AdmSEqoLZLp5ma7UswZycUf9TWM9R71UtGZtB_Pwbx_S27UqbxJlqE5Y-jnpogsrGQA&_nc_zt=23&_nc_ht=scontent.fpnh22-2.fna&_nc_gid=V7U1SCLUHTqdD6s-DmUscg&oh=00_Afo8C0SEF0zLguK1KHNB6jOXYWbEI1MWPwDcuFMHtvZ1_A&oe=696903F3",
              reactedUsernames: "Kou Sopheap ",
              others: 'posted a new reel: "កម្មស្មោះត្រង់".',
              duration: "19h",
              icon: Icons.videocam_sharp,
              backgroundColor: Colors.redAccent,
            ),
            Notifications(
              profileUrl: "https://scontent.fpnh22-1.fna.fbcdn.net/v/t39.30808-6/599953410_1560097975043044_6874881866779386296_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEBFqNr-d82pXP-6-HQQ7UFliyXxZJ_Ej6WLJfFkn8SPmnEccIl9hCNbepFJBfVcBLZiWUHascOULXrE4YVsvcA&_nc_ohc=67ALndHxdzQQ7kNvwFKhKrD&_nc_oc=AdlbPep0giI-d1M5rwHpcYnIkAk70dBtuocL87CICPFVHlSpbM02-UOGBmBlGX1sNig&_nc_zt=23&_nc_ht=scontent.fpnh22-1.fna&_nc_gid=j_l8KES-5Lt0lfXZ-Fvbxg&oh=00_Afqa2Rs_1iz7NXqsJoK91QtlV7OjnEi2i4EfaZqwYvimNA&oe=6968E736",
              reactedUsernames: "Hok Nave ",
              others: 'posted in: "ចែករំលែកអំពីកម្ពុជា".',
              duration: "5d",
              icon: Icons.people_outline_outlined,
              backgroundColor: Colors.lightBlue,
            ),
            Divider(indent: 20, endIndent: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "Mark all as read",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Notifications extends StatelessWidget {
  final String profileUrl;
  final String reactedUsernames;
  final String others;
  final String duration;
  final IconData icon;
  final Color backgroundColor;

  const Notifications({
    required this.profileUrl,
    required this.reactedUsernames,
    required this.others,
    required this.duration,
    required this.icon,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  profileUrl,
                ),
              ),
              Container(
                height: 28,
                width: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 23,
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: reactedUsernames,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: others)
                      ],
                    ),
                  ),
                  Text(
                    duration,
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

