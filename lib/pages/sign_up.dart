import 'package:flutter/material.dart';
import 'package:enna_login/constants/constants.dart';

Widget signUp() {
  return Column(
    children: [
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Don\'t have an account? ',
            style: TextStyle(fontSize: 13),),
          ),
          Text('Sign Up',
            style:TextStyle(
              color: blue,
                fontSize: 13,
            fontWeight: FontWeight.bold),
          ),
        ],
      )
    ],
  );
}
