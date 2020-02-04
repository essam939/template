import 'package:flutter/material.dart';

import 'signup.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      actions: <Widget>[
       FlatButton(
         child: Text("Skip",style: TextStyle(color: Colors.black),),
         onPressed: (){},
       ),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Form(
              child: Expanded(
                child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Sign in",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  TextFormField(
                  decoration: InputDecoration(
                  labelText: 'User name',
                    icon: Icon(Icons.account_circle)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                      icon: Icon(Icons.lock)
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: Text("Forgot Password ?",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width /2,
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                      child: Text("Sign up",style: TextStyle(color: Colors.grey),),
                      )
                    ],
                  ),
                ],
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
