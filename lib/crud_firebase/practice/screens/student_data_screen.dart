import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/practice/fetching/fetching_student_data_firebase.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/practice/models/student_model.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/practice/screens/student_card.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';

class StudentDataScreen extends StatefulWidget {
  const StudentDataScreen({super.key});

  @override
  State<StudentDataScreen> createState() => _StudentDataScreenState();
}

class _StudentDataScreenState extends State<StudentDataScreen> {

  @override
  void initState() {
    getStudentsData();
    super.initState();
  }

  final List<StudentModel> students = [];
  bool _isLoading = true;
  final StudentService studentService = StudentService();

  Future<void> getStudentsData() async {
    try {
      final fetchingStudents = await studentService.fetchStudentsData();

      if (mounted) {
        setState(() {
          students.clear();
          students.addAll(fetchingStudents);
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
      if (kDebugMode) print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : students.isEmpty
          ? const Center(
              child: TextWidget(
                text: "No students found",
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          : ListView.builder(
            itemCount: students.length,
              itemBuilder: (context, index) {
                final std = students[index];
                return StudentCard(student: std);
              },
            ),
    );
  }
}
