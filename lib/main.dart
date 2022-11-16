import 'dart:async';
import 'package:dokandar/configs/app_colors.dart';
import 'package:dokandar/views/auth/get_mobile_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dokandar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          iconTheme: IconThemeData(color: AppColors.black),
          elevation: 0,
          titleSpacing: 0,
          titleTextStyle: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500
          )
        )
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const GetMobileNumberScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/shop.png',height: 150,),
      ),
    );
  }
}

