import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxconceitos/src/controllers/HomgePage/home_page_controller.dart';

class HomePage extends StatelessWidget {
  final _homePageController = HomePageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx Estudos'),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            return Text('${_homePageController.counter}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _homePageController.increment();
        },
        child: Icon(Icons.plus_one),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
