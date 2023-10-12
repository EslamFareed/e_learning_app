import 'package:e_learning_app/components/sizes_screen.dart';
import 'package:e_learning_app/models/course_model.dart';
import 'package:flutter/material.dart';

class ListViewCourses extends StatelessWidget {
  ListViewCourses({super.key, required this.courses});

  List<CourseModel> courses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          width: SizesScreen.width * .95,
          height: SizesScreen.height * .4,
          margin: EdgeInsets.symmetric(
            horizontal: SizesScreen.width * .025,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: SizesScreen.width * .95,
                    height: SizesScreen.height * .4 * .6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(courses[index].image!),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 15,
                    child: Container(
                      height: 35,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        "${courses[index].price} \$",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: SizesScreen.height * .4 * .35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courses[index].description!,
                      style: const TextStyle(color: Colors.green),
                    ),
                    Text(
                      courses[index].name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    Text(courses[index].category!),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: courses.length,
    );
  }
}
