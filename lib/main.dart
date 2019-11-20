import 'package:flutter/material.dart';
import './login.dart';
import './registre.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePge()
    );
  }
}

class HomePge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Flutter Trainig ARSELAN"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              child: Image.asset('images/arselan.png'),
            ),
            Container(
              child: Center(child:Text('ARSELAN',
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
             ,),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(child: Text('Sign In'),
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  ),
                  RaisedButton(child: Text('Sign Up'),
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                  },)
                ],
              ),
            )
          ],
        ),    
      );
  }
}