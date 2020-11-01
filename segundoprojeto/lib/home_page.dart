import 'package:flutter/material.dart';
import 'package:segundoprojeto/app_controlle.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: Switch(
        value: AppController.instance.isdartThem,
        onChanged: (bool value) {
          AppController.instance.changeTeme();
          print('Aleterado');
        },
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
