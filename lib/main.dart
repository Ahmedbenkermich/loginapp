import 'package:flutter/material.dart';
import 'package:LoginAPP/pages/login.dart';
import 'package:LoginAPP/pages/signup.dart';
import 'package:LoginAPP/pages/welcome.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",

      routes: {
        "/" : (context) => const Welcome(),
        "/login":(context) => const Login(),
        "/signup":(context) => const Signup(),
      },
    );
  }
}