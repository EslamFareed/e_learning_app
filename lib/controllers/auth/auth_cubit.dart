import 'package:bloc/bloc.dart';
import 'package:e_learning_app/models/user_model.dart';
import 'package:e_learning_app/repos/auth/auth_repo.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  void login(String email, String pass) async {
    emit(LoadingLoginState());
    User? user = await MainRepo.authRepo.login(email, pass);
    if (user != null) {
      emit(SuccessLoginState());
    } else {
      emit(ErrorLoginState());
    }
  }

  void register(UserModel u) async {
    emit(LoadingRegisterState());
    User? user = await MainRepo.authRepo.register(u);
    if (user != null) {
      emit(SuccessRegisterState());
    } else {
      emit(ErrorRegisterState());
    }
  }
}
