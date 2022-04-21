import 'dart:ui';
import 'package:untitled/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Widget build(BuildContext context) {
    Future signIn() async {
      try {
        print(usernameController.text.trim());

        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text.trim(),
          password: passwordController.text.trim(),
        );
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Invalid Credentials"),
        ));;
      }
    }
    @override
    void dispose() {
// Clean up the controller when the widget is disposed.
      usernameController.dispose();
      passwordController.dispose();
      super.dispose();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Login/Signup',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required!';
                      }

                      return null;
                    },
                    controller: usernameController,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Email Id',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey)),),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required!';
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey)),),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: signIn,

                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 140, vertical: 10),
                        textStyle: const TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  child: const Text(
                    'Not Registered?Signup',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ]),
        ),
      ),);
  }
}
