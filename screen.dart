import 'package:dv/splash.dart';
import 'package:flutter/material.dart';
import 'nxt.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Color.fromARGB(255, 38, 0, 255),
              gradient: LinearGradient(colors: [
                (new Color.fromARGB(255, 38, 0, 255)),
                (new Color.fromARGB(255, 162, 0, 255))
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'INFOZYN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Merriweather',
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'READ . SHARE . INSPIRE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 102, 179),
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  labelText: "Email",
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  labelText: "Password",
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
              child: Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.black),
          )),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
        ),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 5, 112, 206),
                  Color.fromARGB(255, 16, 106, 202),
                ])),
            child: ButtonTheme(
              buttonColor: Color.fromARGB(255, 14, 101, 214),
              height: 50.0,
              minWidth: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return App();
                  }));
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'or',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        
                    offset: Offset(0, 10),
                  )
                ]),
            child: ButtonTheme(
              buttonColor: Color.fromARGB(255, 238, 240, 242),
              
              child: Text(
                "Log in with Google",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          alignment: Alignment.center,
          child: GestureDetector(
              child: Text(
            "Want to Register?",
            style: TextStyle(color: Colors.blue),
          )),
        ),
      ])),
    );
  }
}
