
import 'package:enna_login/api/api_service.dart';

import 'homepage.dart';
import 'package:flutter/material.dart';
import '../Constants/constants.dart';



Widget signIn({required BuildContext context, required String username, required String password}) {
  final ApiService _apiService = ApiService();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(2),
            ),
            height: 50,
            child: Center(
              child: SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    print(username);
                    print(password);
                    _apiService.Login(username_:username ,password_: password ).then((value) {
                      //print(value!.response!.status);
                      if(value?.response?.status == true ){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                    }
                    );

                  },
                  child: const Text('Sign in',
                  style: TextStyle(
                    fontSize: 16
                  ),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(blue),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
