import 'package:e_learning_app/components/list_view_courses.dart';
import 'package:e_learning_app/controllers/courses/courses_cubit.dart';
import 'package:e_learning_app/views/search/components/search_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchField(),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                "${CoursesCubit.get(context).searchCourses.length} Results",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListViewCourses(
              courses: CoursesCubit.get(context).searchCourses,
            )
          ],
        ),
      ),
    );
  }
}
