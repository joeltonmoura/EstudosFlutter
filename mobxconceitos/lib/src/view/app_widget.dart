import 'package:flutter/material.dart';

import 'HomePage/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
    );
  }
}
