import 'package:e_learning_app/components/sizes_screen.dart';
import 'package:e_learning_app/controllers/auth/auth_cubit.dart';
import 'package:e_learning_app/controllers/main/main_cubit.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:e_learning_app/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    SizesScreen.makeSizes(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => MainCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData.light(useMaterial3: true),
      ),
    );
  }
}
