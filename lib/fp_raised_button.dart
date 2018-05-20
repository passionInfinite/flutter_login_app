import 'package:flutter/material.dart';

class FPRaisedButton extends StatelessWidget {

  final String title;
  final IconData icon;
  final Function onPress;

  FPRaisedButton(this.title, this.icon, this.onPress);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Container(height: 60.0, width: 110.0, margin: new EdgeInsets.only(top: 20.0, left: 20.0),
            child: new RaisedButton(onPressed: this.onPress, color: Colors.white70,
                child: new Center(
                  child: new Row(
                    children: <Widget>[
                      new Icon(this.icon, color: Colors.white),
                      new Container(margin: new EdgeInsets.only(left: 4.0),
                          child: new Text(this.title, style: new TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center)
                      )
                    ],
                  ),
                )
            )
        )
    );
  }

}