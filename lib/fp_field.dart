import 'package:flutter/material.dart';

class FPField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool obscureText;

  FPField(this.hintText, this.icon, this.controller, [this.obscureText = false]);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          borderRadius:
          new BorderRadius.all(new Radius.circular(4.0)),
          color: Colors.white),
      margin: new EdgeInsets.only(top: 20.0),
      child: new TextField(
        obscureText: this.obscureText ? this.obscureText : false,
        style: new TextStyle(
            height: 1.5,
            color: Colors.grey.shade600,
            fontSize: 16.0,
            fontWeight: FontWeight.bold),
        controller: this.controller,
        decoration: new InputDecoration(
            prefixIcon: new Container(
                child: new Icon(this.icon),
                padding:
                new EdgeInsets.only(left: 2.0, right: 10.0)),
            hintText: this.hintText,
            labelStyle: new TextStyle(color: Colors.black),
            contentPadding: new EdgeInsets.all(16.0)),
      ),
    );
  }

}