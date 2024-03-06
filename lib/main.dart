import 'dart:async';

import 'package:e_project/catogories.dart';
import 'package:e_project/create_account.dart';
import 'package:e_project/firebase_options.dart';
import 'package:e_project/home_product.dart';
import 'package:e_project/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: np(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 15),
          () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=> Login_Page())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('images/splash.json',height: 400,width: double.infinity),
      ),
    );
  }
}




