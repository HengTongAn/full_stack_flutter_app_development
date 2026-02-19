import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/test.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/starter_screens/start_screen.dart';
import '../API/api_screen.dart';
import '../API/api_screen_pagination.dart';
import '../firebase_options.dart';
import '../practice/dialog_screen.dart';
import 'body_screens/components/bottom_navigation_bar.dart';
import 'body_screens/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiScreenPagination(),
      // MainApiScreen(),
      // StartScreen(),
    );
  }
}
