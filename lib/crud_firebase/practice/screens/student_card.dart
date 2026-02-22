import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/crud_firebase/practice/models/student_model.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key, required this.student});
  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              style: BorderStyle.solid,
              color: shadeGrey.withValues(alpha: 0.4),
            ),
            shape: BoxShape.circle,
            color: deepPink.withValues(alpha: 0.5),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.5,
                spreadRadius: 0.125,
                color: shadeBlack.withValues(alpha: 0.7),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: student.image,
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.error, color: redAccent, size: 30)),
            ),
          ),
        ),
        title: TextWidget(
          text: student.name,
          fontFamily: "Poppins",
          fontSize: 15,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.start,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "ID:",
                  fontFamily: "Poppins",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(width: 4),
                TextWidget(
                  text: student.id.toString(),
                  fontFamily: "Nunito Sans",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Sex:",
                  fontFamily: "Poppins",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(width: 4),
                TextWidget(
                  text: student.gender,
                  fontFamily: "Nunito Sans",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Age:",
                  fontFamily: "Poppins",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(width: 4),
                TextWidget(
                  text: student.age.toString(),
                  fontFamily: "Nunito Sans",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Major:",
                  fontFamily: "Poppins",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(width: 4),
                TextWidget(
                  text: student.major,
                  fontFamily: "Nunito Sans",
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
