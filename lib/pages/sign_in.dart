
import 'homepage.dart';
import 'package:flutter/material.dart';
import '../Constants/constants.dart';



Widget signIn(context) {

    return Column(
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
          width: 300,
          child: Center(
            child: SizedBox(
              width: 400,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
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
    );
  }
