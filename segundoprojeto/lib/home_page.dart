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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 88.1,
              child: DrawerHeader(
                child: Container(
                    alignment: Alignment.center,
                    child: FlutterLogo(
                        size: 150, style: FlutterLogoStyle.horizontal)),
                decoration: BoxDecoration(
                  color: Color(0xFF222831),
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: ListView(
            children: [
              Text('Contador $counter'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomSwitch(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.brown,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isdartThem,
      onChanged: (bool value) {
        AppController.instance.changeTeme();
        print('Aleterado');
      },
    );
  }
}
