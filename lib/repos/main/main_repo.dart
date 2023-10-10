import 'package:e_learning_app/repos/auth/auth_repo.dart';
import 'package:e_learning_app/repos/db/firebase/firebase_db_helper.dart';

class MainRepo {
  static FirebaseDBHelper dbHelper = FirebaseDBHelper();
  static AuthRepo authRepo = AuthRepo();
}
