import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:e_learning_app/models/course_model.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());

  static CoursesCubit get(context) => BlocProvider.of(context);

  List<CourseModel> courses = [];
  List<CourseModel> ads = [];
  List<String> categories = [];

  void getCourses() async {
    emit(LoadingCoursesState());
    try {
      List<Map<String, dynamic>> data = await MainRepo.coursesRepo.getCourses();
      for (var element in data) {
        courses.add(CourseModel.fromJson(element));
        if (!categories.contains(element["category"])) {
          categories.add(element["category"]);
        }
      }
      for (var i = 0; i < 5; i++) {
        ads.add(courses[Random().nextInt(courses.length)]);
      }
      emit(SuccessCoursesState());
    } catch (e) {
      print(e.toString());
      emit(ErrorCoursesState());
    }
  }
}
