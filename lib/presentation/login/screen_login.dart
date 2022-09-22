import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myproject1/presentation/admin/admin_page.dart';

import 'package:myproject1/presentation/student/homepage.dart';
import 'package:myproject1/utilities/constants.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _userController = TextEditingController();

  final _passwordController = TextEditingController();
  final bool _isDataMatched = true;
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 145, 41),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              child: const Text(
                'Sign in',
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    decoration: TextDecoration.underline),
              ),
            ),
            Form(
              key: _formKey1,
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 500,
                  decoration: kBoxDecorationStyle,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _userController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 248, 248, 248),
                                width: 200.0)),
                        hintText: 'User Name',
                        hintStyle: TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Value is Empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 500,
                  decoration: kBoxDecorationStyle,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255),
                                width: 200.0)),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Value is Empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 800),
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  //decoration: TextDecoration.underline
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: !_isDataMatched,
                    child: const Text(
                      "Username and Password doesn't match.",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 650),
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        onPressed: () {
                          if (_formKey1.currentState!.validate()) {
                            checkPassword(context);
                          } else {
                            // ignore: avoid_print
                            print('Data Empty');
                          }
                          if (_formKey.currentState!.validate()) {
                            checkPassword(context);
                          } else {
                            // ignore: avoid_print
                            print('Data Empty');
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkPassword(BuildContext ctx) {
    var _username = _userController.text;
    var _password = _passwordController.text;
    if (_username == 'admmin' && _password == 'admin123') {
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx) {
          return ScreenAdmin();
        }),
      );
    } else if (_username == 'student' && _password == 'student123') {
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx) {
          return MyHomePage();
        }),
      );
    } else {
      // ignore: avoid_print
      print('Username not matched');
      var _errorMessage = "Username and Password doesn't match.";

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(_errorMessage),
          margin: const EdgeInsets.all(10),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
