import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDBHelper {
  final db = FirebaseFirestore.instance;

  Future<DocumentReference<Map<String, dynamic>>?> addToCol(
      String collName, Map<String, dynamic> data) async {
    DocumentReference<Map<String, dynamic>>? value;
    await db.collection(collName).add(data).then((_value) {
      value = _value;
    }).catchError((error) {
      print(error);
    });
    return value;
  }

  Future<void> addToColWithId(
      String collName, Map<String, dynamic> data, String id) async {
    return await db.collection(collName).doc(id).set(data);
  }

  Future<List<Map<String, dynamic>>> getList(String collName) async {
    List<Map<String, dynamic>> data = [];
    await db.collection(collName).get().then((value) {
      if (value.size > 0) {
        for (var element in value.docs) {
          data.add(element.data());
        }
      }
    }).catchError((error) {
      print(error.toString());
    });
    return data;
  }

  Future<Map<String, dynamic>?> getItem(String collName, String id) async {
    await db.collection(collName).doc(id).get().then((value) {
      if (value.exists) {
        return value.data();
      } else {
        return null;
      }
    }).catchError((error) {
      print(error.toString());
    });
  }
}
