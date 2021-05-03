import 'package:flutter/material.dart';
import 'package:project/app_controller.dart';
import 'package:project/login_page.dart';
import 'home_page.dart';
import 'app_controller.dart';

class AppWidget extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context,child){
      return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
        ),
        initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
         '/home': (context) => HomePage(),
      },
      );

    });
  }
}