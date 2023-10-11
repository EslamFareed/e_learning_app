import 'package:bloc/bloc.dart';
import 'package:e_learning_app/views/home/home_screen.dart';
import 'package:e_learning_app/views/profile/profile_screen.dart';
import 'package:e_learning_app/views/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);

  int index = 0;

  void changeScreen(int i) {
    index = i;
    emit(ChangeScreenState());
  }

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    )
  ];
}
