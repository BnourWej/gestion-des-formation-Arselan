import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String email ='';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: this._formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter an email';
                  }
                },
                onSaved: (String value){
                  setState(() {
                   email=value; 
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                ),
              ),
              TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter your password';
                  }
                },
                onSaved: (String value){
                  setState(() {
                   password=value; 
                  });
                },
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              RaisedButton(child: Text('Login'),
                  color: Colors.greenAccent,
                  onPressed: () {},
                ),
            ],
          ),
        ),
      ),
    );
  }
}