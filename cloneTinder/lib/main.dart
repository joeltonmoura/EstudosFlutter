import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(56, 176, 222, 1),
            Color.fromRGBO(77, 77, 255, 1),
            Color.fromRGBO(89, 89, 171, 1),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/tinder.png",
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "tindev flutter",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        letterSpacing: -2.0),
                  )
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Ao tocar em entrar, você concorda com',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Os nossos ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Termos. ',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Saiba como',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'processamos seus dados em nossa',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Politíca de Pirvacidade',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' e ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Politíca de',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'Cookies.',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 310,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                left: 0, right: 0, top: 10, bottom: 10),
                            margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, bottom: 0, top: 0),
                                    child: Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    'ENTRA COM O GOOGLE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  )
                                ]),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 310,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                left: 0, right: 0, top: 10, bottom: 10),
                            margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, bottom: 0, top: 0),
                                    child: Icon(
                                      Icons.circle,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Text(
                                    'ENTRA COM FACEBOOK',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  )
                                ]),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 310,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                left: 0, right: 0, top: 10, bottom: 10),
                            margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, bottom: 0, top: 0),
                                    child: Icon(
                                      Icons.circle,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Text(
                                    'ENTRA COM NÚMERO DE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  )
                                ]),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                            right: 0, bottom: 20, left: 0, top: 20),
                        child: Text(
                          'Problemas para fazer o login ?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
