import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'email.dart';
import 'password.dart';
import 'sign_in.dart';
import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Language:  ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        change = false;
                      });
                    },
                    child: Container(
                      width: 41,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        border: Border.all(width: 1, color: blue),
                        color: change == false ? blue : Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            'EN',
                            style: TextStyle(
                              color:
                                  change == false ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        change = true;
                      });
                    },
                    child: Container(
                      width: 41,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        border: Border.all(width: 1, color: blue),
                        color: change == true ? blue : Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            'عر',
                            style: TextStyle(
                              color:
                                  change == true ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
              const SizedBox(height: 70),
              const Text(
                'Enna',
                style: TextStyle(
                    color: blue,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins'),
              ),
              const SizedBox(
                height: 50,
              ),
              buildEmail(),
              password(),
              //forgotPassword(),
              signIn(context),
              signUp(),
            ],
          ),
        ],
      ),
    );
  }
}
