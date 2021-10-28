import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Icon(
                  Icons.android,
                  size: 80,
                  color: darkMode ? Colors.white : Colors.black,
                ),
                decoration: BoxDecoration(
                    color: darkMode ? Colors.grey[850] : Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          darkMode = true;
                        });
                      },
                      child: const Text(
                        "Dark",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          darkMode = false;
                        });
                      },
                      child: const Text(
                        "Light",
                        style: TextStyle(color: Colors.black),
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
