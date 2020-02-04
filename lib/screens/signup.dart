import 'package:flutter/material.dart';
import 'package:shopping/screens/signIn.dart';
import 'package:shopping/screens/tabsPage.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                        Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    buildTextFormField("User name",Icons.account_circle),
                    buildTextFormField("Email",Icons.email),
                    buildTextFormField("Mobile Number",Icons.phone_android),
                     TextFormField(
                     decoration: InputDecoration(
                        labelText: 'Password',
                        counterText: "",
                        icon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                    obscureText:true,
                    maxLength: 32,
                  ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width /2,
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TabsPage()));

                            },
                            child: Text("REGISTER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: Text("Login",style: TextStyle(color: Colors.grey),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Or Sign up with",style: TextStyle(color: Colors.grey,fontSize: 17),),
                IconButton(icon: Icon(Icons.face),onPressed: (){},),
                IconButton(icon: Icon(Icons.face),onPressed: (){},),
                IconButton(icon: Icon(Icons.face),onPressed: (){},)
              ],
            ),
          ),
        ),
    );
  }

  TextFormField buildTextFormField([String lable,IconData customIcon,IconData secondIcon,int length,bool secretText=false]) {
    return TextFormField(
                    decoration: InputDecoration(
                        labelText: lable,
                        counterText: "",
                        icon: Icon(customIcon),
                      suffixIcon: Icon(secondIcon)
                    ),
                      obscureText:secretText,
                      maxLength: length,
                  );
  }
}
