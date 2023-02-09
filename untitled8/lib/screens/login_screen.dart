import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/screens/dashboard_screen.dart';
import 'package:untitled8/screens/forgot_password_screen.dart';
import '../utils/ui_helpers.dart';
import '../main.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Authenticate(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login_background.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 46,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Image.asset(
                          "assets/lock.png",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "ACCOUNT LOGIN",
                        style: TextStyle(
                          color: ColorUtils.appWhite,
                          fontSize: 26,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 66,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username",
                        style: TextStyle(
                          color: ColorUtils.textBlue,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: ColorUtils.appWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      onSaved: (newValue) {
                        email = newValue!;
                      },
                      validator: (value) {
                        if (value == "" || !GetUtils.isEmail(value!)) {
                          return "Email is not valid";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(
                              0xff2B638D,
                            ),
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(
                              0xff2B638D,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: ColorUtils.textBlue,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: ColorUtils.appWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      onSaved: (newValue) {
                        password = newValue!;
                      },
                      //               validator: (value) {
                      //                 RegExp regex =
                      // RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      //                 if (value == "" ||!regex.hasMatch(value!) ) {
                      //                   return "Password is not valid";
                      //                 } else {
                      //                   return null;
                      //                 }
                      //               },
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(
                              0xff2B638D,
                            ),
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(
                              0xff2B638D,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return ForgotPasswordScreen();
                          },
                        ));
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: ColorUtils.textBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => DashBord());
                      },
                      child: Container(
                        height: 45,
                        width: 264,
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: ColorUtils.appWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            23,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color(
                                0xff12B99D,
                              ),
                              Color(
                                0xff01d1F2,
                              ),
                            ],
                            begin: Alignment.center,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
