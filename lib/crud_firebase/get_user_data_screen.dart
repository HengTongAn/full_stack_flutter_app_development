import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/get_user_input_screen.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/models/user_model.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class GetUserDataScreen extends StatefulWidget {
  const GetUserDataScreen({super.key});

  @override
  State<GetUserDataScreen> createState() => _GetUserDataScreenState();
}

class _GetUserDataScreenState extends State<GetUserDataScreen> {
  final List<UserModel> users = [];
  bool isLoading = true;

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  Future<void> getUsers() async {
    try {
      final data = await FirebaseFirestore.instance.collection("user").get();
      if (mounted) {
        setState(() {
          users.clear();
          for (var a in data.docs) {
            users.add(UserModel.fromJson(a.data()));
          }
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      throw Exception("Error fetching users: $e");
    }
  }

  void _navigateScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GetUserInputScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : users.isEmpty
          ? Center(
              child: const TextWidget(
                text: "No users found",
                fontFamily: "RalewayBold",
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return _userCard(user);
              },
            ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: blue,
        elevation: 0,
        onPressed: () => _navigateScreen(),
        child: Icon(Icons.add, color: white),
      ),
    );
  }

  Widget _userCard(UserModel user) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: ListTile(
        // leading: Icon(Icons.person),
        leading: Container(
          padding: const EdgeInsets.all(5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(shape: BoxShape.circle, color: white),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: CachedNetworkImage(
              imageUrl: user.picture,
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.error, color: redAccent)),
            ),
          ),
        ),
        title: TextWidget(
          text: user.name,
          fontFamily: "Nunito Sans",
          fontSize: 15,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: "Gender: ${user.gender}",
              fontFamily: "Nunito Sans",
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            TextWidget(
              text: "Age: ${user.age}",
              fontFamily: "Nunito Sans",
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            TextWidget(
              text: "Address: ${user.address}",
              fontFamily: "Nunito Sans",
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
