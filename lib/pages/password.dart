import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';

Widget password() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(height: 30),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(2),
        ),
        height: 50,
        width: 300,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.w400,
            ),
            border:  OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}




// Widget forgotPassword(){
//   return Container(
//     alignment: Alignment.centerRight,
//     child: TextButton(
//       onPressed: ()=> print('forgot password'),
//       child: Padding(
//         padding: const EdgeInsets.only(right:29.0),
//         child: Text('Forgot Password'),
//       ),
//     ),
//   );
// }





