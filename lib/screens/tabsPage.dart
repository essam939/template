import 'package:flutter/material.dart';
import 'package:shopping/screens/accountPage.dart';
import 'package:shopping/screens/cartPage.dart';
import 'package:shopping/screens/homePage.dart';
import 'package:shopping/screens/offersPage.dart';
import 'package:shopping/screens/searchPage.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}
class _TabsPageState extends State<TabsPage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    OffersPage(),
    CartPage(),
    SearchPage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      drawer: Container(
        width: 210,
        child: Drawer(
          key: _drawerKey,
          child: Container(
            color: Colors.blue,
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: Text("Men's wear",style: TextStyle(color: Colors.white,fontSize: 15),), onTap: () {},
                ),
                ListTile(
                  title: Text("Women's wear",style: TextStyle(color: Colors.white,fontSize: 15),), onTap: () {},
                ),
                ListTile(
                  title: Text('Accesories',style: TextStyle(color: Colors.white,fontSize: 15),), onTap: () {},
                ),
                ListTile(
                  title: Text('Track order',style: TextStyle(color: Colors.white,fontSize: 15),), onTap: () {},
                ),
                ListTile(
                  title: Text('Account details',style: TextStyle(color: Colors.white,fontSize: 15),),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 15),), onTap: () {},
                ),
                ListTile(
                  title: Text('Sign out',style: TextStyle(color: Colors.red),),
                  onTap: () {_showAlertDailog();},
                ),
              ],
            ),
          ),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(onTabTapped),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(void Function(int index) onTabTapped) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black87,
      currentIndex: _currentIndex,
      onTap: onTabTapped,
      items:<BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.white,),
          title: Text("home",style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer,color: Colors.white,),
          title: Text("Hot offer",style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart,color: Colors.white,),
          title: Text("My Cart",style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,color: Colors.white,),
          title: Text("search",style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle,color: Colors.white,),
          title: Text("Account",style: TextStyle(color: Colors.white),),
        ),


      ],
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dailog'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){},
                      child: Text("contact us"),
                    ),
                    RaisedButton(
                      onPressed: (){},
                      child: Text("Rating"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){},
                      child: Text("Rating"),
                    ),
                    RaisedButton(
                      onPressed: (){

                      },
                      child: Text("Delete",style: TextStyle(color: Colors.white),),
                      color: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  Future<void> _showAlertDailog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure ?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("Logout",style: TextStyle(color: Colors.white),),
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("cancel"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
