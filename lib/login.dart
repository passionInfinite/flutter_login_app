import 'package:flutter/material.dart';
import 'fp_raised_button.dart';
import 'fp_field.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeString = "Please Login";

  void clear() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
      _welcomeString = "Please Login";
    });
  }

  void login() {
    if (_userController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      setState(() => _welcomeString = "Welcome, ${_userController.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Flutter Portal'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueAccent,
      body: new Container(
        alignment: Alignment.topCenter,
        margin: new EdgeInsets.only(top: 20.0),
        child: new ListView(
          children: <Widget>[
            new Image.asset('images/face.png',
                width: 150.0, height: 150.0, color: Colors.white),
            new Container(
              margin: new EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new FPField('Username', Icons.person_outline, this._userController),
                  new FPField('Password', Icons.lock_outline, this._passwordController, true),
                  new Center(
                    child: new Container(
                      margin: new EdgeInsets.only(top: 20.0),
                      child: new Row(
                        children: <Widget>[
                          new FPRaisedButton('Login', Icons.lock_open, this.login),
                          new FPRaisedButton('Clear', Icons.clear_all, this.clear),
                        ],
                      ),
                    ),
                  ),
                  new Center(
                    child: new Padding(
                        padding: new EdgeInsets.only(top: 80.0),
                        child: new Text("$_welcomeString!", style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold))
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
