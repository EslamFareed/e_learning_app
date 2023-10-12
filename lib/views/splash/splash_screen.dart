import 'package:e_learning_app/components/navigator_helper.dart';
import 'package:e_learning_app/models/course_model.dart';
import 'package:e_learning_app/repos/db/firebase/collections_name.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:e_learning_app/views/auth/login_screen.dart';
import 'package:e_learning_app/views/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // _addData() async {
  //   for (var i = 0; i < 10; i++) {
  //     await MainRepo.dbHelper.addToCol(
  //       CollectionsName.Courses.name,
  //       CourseModel(
  //         name: "Flutter",
  //         image: "",
  //         createdDate: DateTime.now().toString(),
  //         price: 150.2,
  //         category: "Mobile Developement",
  //         description: "80 hours",
  //         instructorName: "Shamsa",
  //       ).toJson(),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // _addData();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        NavigatorHelper.toAndOff(MainRepo.authRepo.goToLoginOrMain(), context);
      },
    );

    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
