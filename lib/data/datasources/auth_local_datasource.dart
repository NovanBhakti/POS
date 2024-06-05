import 'package:flutter_posresto_app/data/models/response/auth_response_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModels authResponseModels) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('authData', authResponseModels.toJson());
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('authData');
  }

  Future<AuthResponseModels> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('authData');
    return AuthResponseModels.fromJson(authData!);
  }

  Future<bool> isAuthDataExist() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('authData');
  }
}
