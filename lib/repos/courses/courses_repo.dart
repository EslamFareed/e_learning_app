import 'package:e_learning_app/repos/db/firebase/collections_name.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';

class CoursesRepo {
  Future<List<Map<String, dynamic>>> getCourses() async {
    return await MainRepo.dbHelper.getList(CollectionsName.Courses.name);
  }
}
