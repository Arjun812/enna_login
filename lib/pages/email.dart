import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';


Widget buildEmail({required TextEditingController controller_}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
         Text('Login to your account',
           style: GoogleFonts.poppins(textStyle:const TextStyle(
               color: black,
               fontSize: 16,
               fontWeight: FontWeight.w600
           ),
         ),
         ),
        const SizedBox(height: 15),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: white,
            borderRadius:  BorderRadius.circular(2),
          ),
          height: 50,
          child: TextField(
            controller: controller_,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
              hintText: 'Email or Phone Number',
              hintStyle: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
