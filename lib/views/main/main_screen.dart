import 'package:e_learning_app/controllers/courses/courses_cubit.dart';
import 'package:e_learning_app/controllers/main/main_cubit.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = MainCubit.get(context);

    CoursesCubit.get(context).getCourses();

    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) {
        return state is LoadingCoursesState
            ? const Scaffold(body: Center(child: CircularProgressIndicator()))
            : BlocBuilder<MainCubit, MainState>(
                builder: (context, state) {
                  return SafeArea(
                    child: Scaffold(
                      appBar: AppBar(
                        toolbarHeight: 60,
                        elevation: 1,
                        title: Image.asset(
                          "assets/images/logo.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      body: cubit.screens[cubit.index],
                      bottomNavigationBar: BottomNavigationBar(
                        currentIndex: cubit.index,
                        onTap: (value) {
                          cubit.changeScreen(value);
                        },
                        items: cubit.items,
                        selectedItemColor: Colors.deepOrange,
                        unselectedItemColor: Colors.grey[400],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
