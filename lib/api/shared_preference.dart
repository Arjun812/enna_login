import 'package:enna_login/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference{

  static Future<bool>setDoUserLoggedIn(bool isUserLoggedIn)async{
    SharedPreferences _prefs=await SharedPreferences.getInstance();
    return await _prefs.setBool(doUserLogged, isUserLoggedIn);
  }
  static Future<bool>setJwtToken(String token)async{
    SharedPreferences _prefs=await SharedPreferences.getInstance();
    return await _prefs.setString(jwtToken, token);
  }

  static Future<bool?>getDoUserLoggedIn()async{
    SharedPreferences _prefs=await SharedPreferences.getInstance();
    return _prefs.getBool(doUserLogged);
  }
  static Future<String?>getJwtToken()async{
    SharedPreferences _prefs=await SharedPreferences.getInstance();
    return _prefs.getString(jwtToken);
  }
  static Future<bool>remove()async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setDoUserLoggedIn(false);
    await _prefs.remove(jwtToken);
    return true;
  }
}