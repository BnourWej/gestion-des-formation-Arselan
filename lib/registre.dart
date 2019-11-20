import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
    final _formKey = GlobalKey<FormState>();
    String name ='';
    String email='';
    String phone='';
    String password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
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
                    return 'Please enter your name';
                  }
                },
                onSaved: (String value){
                  setState(() {
                   name=value; 
                  });
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),

              TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter your email';
                  }
                },
                onSaved: (String value){
                  setState(() {
                   email=value; 
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),

              TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter your phone number';
                  }else if (value.length != 8){
                    return 'Please enter a valid phone number';
                  }
                },
                onSaved: (String value){
                  setState(() {
                   phone=value; 
                  });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
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

              /*SizedBox(
                width: 50,
               child: */ RaisedButton(child: Text('Create Account'),
                  color: Colors.greenAccent,
                  onPressed: () {},
                ),
              //)
            ],
          ),
        ),
      ),
    );
  }
}