

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static Future<void> saveM3UUrl(String url) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('m3u_url', url);
  }

  static Future<String?> getM3UUrl() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('m3u_url');
  }
}


