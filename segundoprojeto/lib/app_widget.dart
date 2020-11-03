import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:segundoprojeto/app_controlle.dart';
import 'package:segundoprojeto/login_page.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Color(0xFF222831),
            brightness: AppController.instance.isdartThem
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/homepage',
          routes: {
            '/': (context) => LoginPage(),
            '/homepage': (context) => HomePage(),
          },
        );
      },
    );
  }
}
