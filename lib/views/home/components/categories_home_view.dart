import 'package:e_learning_app/controllers/courses/courses_cubit.dart';
import 'package:flutter/material.dart';

class CategoriesHomeView extends StatelessWidget {
  const CategoriesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text("Categories : ")),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    "#${CoursesCubit.get(context).categories[index]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                );
              },
              itemCount: CoursesCubit.get(context).categories.length,
            ),
          )
        ],
      ),
    );
  }
}
