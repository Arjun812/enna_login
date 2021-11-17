import 'dart:convert';


import 'package:enna_login/api/shared_preference.dart';
import 'package:http/http.dart'as http;

import 'login_model.dart';
class ApiService{
  Future <LoginModal?> Login({required String username_,required String password_}) async {
   final body = jsonEncode({
     "email": username_,
     "password": password_,

     // "email":"vishnu@webzonetech.qa",
     // "password":"123456"
   }
   );
    var jwt = await SharedPreference.getJwtToken();
    LoginModal? _loginModal;
    try {
      final response = await http
          .post(Uri.parse('http://18.194.58.35/api/auth/login'),
          body: body,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $jwt',
          }
      );

      if (response.statusCode == 200) {
        print("8888888888888888888888888888");
        //print(response.body);
        final jsonDecode = json.decode(response.body);
        //print(jsonDecode);
        return LoginModal.fromJson(jsonDecode);
      }
    }
    catch (e) {
      print('error');
    }
   return _loginModal;
    }
    // else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   throw Exception('Failed to load album');
    // }
  }


