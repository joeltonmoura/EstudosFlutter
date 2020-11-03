import 'package:flutter/material.dart';
import 'package:segundoprojeto/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(
                  'assets/images/logo.png',
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Card(
                color: Colors.white.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 20, bottom: 12),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.redAccent,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gapPadding: 4)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Senha',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              color: Colors.redAccent,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gapPadding: 4)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        color: Colors.black.withOpacity(0.8),
                        textColor: Colors.white70,
                        onPressed: () {
                          if (email.trim() != '' && password.trim() != '') {
                            Navigator.of(context)
                                .pushReplacementNamed('/homepage');
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Logar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/fundo2.jpg',
              fit: BoxFit.cover,
              width: double.maxFinite,
            )),
        Container(
          color: Colors.amberAccent.withOpacity(0.1),
        ),
        _body(),
      ],
    ));
  }
}
