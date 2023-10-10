import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static getData(String key) {
    return prefs.get(key);
  }

  static setData(String key, var value) {
    if (value is int) {
      prefs.setInt(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else {
      prefs.setStringList(key, value);
    }
  }
}
