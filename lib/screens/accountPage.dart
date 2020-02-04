import 'package:flutter/material.dart';
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                      radius: 70,
                    backgroundImage: NetworkImage("https://cdn1.vectorstock.com/i/1000x1000/33/25/cartoon-young-man-icon-vector-12133325.jpg"),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                  Icon(Icons.account_circle,color: Colors.blue,),
                  Text("   Mohamed Essam")
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.email,color: Colors.blue,),
                Text("   Mohamed Essam@gmail.com")
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.mobile_screen_share,color: Colors.blue,),
                Text("   +201234567895")
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.lock,color: Colors.blue,),
                Text("   Change Password,color: Colors.blue,")
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
          ],
        ),
      ),
    );
  }
}
