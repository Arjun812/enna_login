import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';

Widget password({required TextEditingController passwordController_}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
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
          child:  TextField(
            controller: passwordController_,
            obscureText: true,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
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
    ),
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





