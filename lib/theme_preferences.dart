import 'package:shared_preferences/shared_preferences.dart';

// Function to save the user's theme preference
Future<void> saveThemePreference(String theme) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('theme', theme);
}

// Function to retrieve the user's theme preference
Future<String> getThemePreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('theme') ?? 'light'; // Default to 'light' if not set
}