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
            UserAccountsDrawerHeader(
                currentAccountPicture:
                    ClipOval(child: Image.asset('assets/images/pp.jpeg')),
                accountName: Text('Jolton Moura'),
                accountEmail: Text('joeltonmoura1@gmail.com')),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                print('Clicado');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Sair'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
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
