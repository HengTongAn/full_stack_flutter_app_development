import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/API/api_screen.dart';
import 'package:full_stack_flutter_app_development/API/api_screen_pagination.dart';
import 'package:full_stack_flutter_app_development/API/practice/screens/products_screen.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/get_user_data_screen.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/practice/screens/student_data_screen.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/firebase_options.dart';
// import 'package:full_stack_flutter_app_development/practice/login_screen_practice.dart';
// import 'package:full_stack_flutter_app_development/practice/navigator_pages.dart';
// import 'package:full_stack_flutter_app_development/practice/practical_login_screen.dart';
// import 'package:full_stack_flutter_app_development/practice/promotion_ui_exercise.dart';
// import 'package:full_stack_flutter_app_development/practice/screens/create_account_page.dart';
// import 'package:full_stack_flutter_app_development/screens/checkbox.dart';
// import 'package:full_stack_flutter_app_development/screens/practical_column_row_screen.dart';
// import 'package:full_stack_flutter_app_development/screens/practical_products_screen.dart';
// import 'package:full_stack_flutter_app_development/screens/scaffold_lesson.dart';
// import 'package:full_stack_flutter_app_development/screens/Navigation_Screens/scaffold_lesson2.dart';
// import 'package:full_stack_flutter_app_development/screens/scrollable_widget.dart';
// import 'package:full_stack_flutter_app_development/screens/scrollable_widget1.dart';
// import 'API/api_screen_pagination.dart';
// import 'Apps_Clone/notifications.dart';
// import 'Apps_Clone/instagram_app_clone.dart';
// import 'Apps_Clone/main_screen.dart';
// import 'Apps_Clone/search_page.dart';
// import 'Apps_Clone/settings_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Apps());
}

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsScreen(),
      // MainApiScreen(),
      // StudentDataScreen(),
      // GetUserDataScreen(),
    );
  }
}
