import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String sharedPreferenceUserLoggedInKey = "ISLOGGEDIN";
  static String sharedPreferenceVornameKey = "VORNAMEKEY";
  static String sharedPreferenceNachnameKey = "NACHNAMEKEY";
  static String sharedPreferenceImageURLKey = "IMAGEURLKEY";


  //  save to SharedPreferences
  static Future<void> saveVornameSharedPreference(String vorname) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceVornameKey, vorname);
  }

  static Future<void> saveNachnameSharedPreference(String nachname) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceNachnameKey, nachname);
  }

  static Future<void> saveImageURLSharedPreference(String imageURL) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceImageURLKey, imageURL);
  }

  //  getting data from SharedPreferences
  static Future<String> getVornameSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(sharedPreferenceVornameKey);
  }

  static Future<String> getNachnameSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(sharedPreferenceNachnameKey);
  }

  static Future<String> getImageURLSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(sharedPreferenceImageURLKey);
  }
}
