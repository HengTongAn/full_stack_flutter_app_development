import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/practice/models/student_model.dart';

class StudentService {
  final CollectionReference _studentCollection = FirebaseFirestore.instance.collection("student");

  Future<List<StudentModel>> fetchStudentsData() async {
    try {
      final querySnapShot = await _studentCollection.get();

      return querySnapShot.docs.map((doc) {
        return StudentModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      throw Exception("Failed to fetch user: $e");
    }
  }
}