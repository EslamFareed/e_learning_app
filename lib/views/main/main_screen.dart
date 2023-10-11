import 'package:e_learning_app/controllers/main/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = MainCubit.get(context);

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
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
        );
      },
    );
  }
}
