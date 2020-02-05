import 'package:flutter/material.dart';
class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/1,
                height: 150,
                child: Image.network("https://www.designbold.com/academy/wp-content/uploads/2018/08/Music-And-Visual-Aesthetics-How-Album-Covers-Represent-The-Artistry-Of-Musician.png",fit: BoxFit.cover,)
                ,
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/2.05,
                height: 300,
                child: Image.network("https://www.designbold.com/academy/wp-content/uploads/2018/08/Music-And-Visual-Aesthetics-How-Album-Covers-Represent-The-Artistry-Of-Musician.png",fit: BoxFit.cover,),
              ),
              Container(
                width: MediaQuery.of(context).size.width/2.05,
                height: 300,
                child: Image.network("https://www.designbold.com/academy/wp-content/uploads/2018/08/Music-And-Visual-Aesthetics-How-Album-Covers-Represent-The-Artistry-Of-Musician.png",fit: BoxFit.cover,),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/1,
                height: 150,
                child: Image.network("https://www.designbold.com/academy/wp-content/uploads/2018/08/Music-And-Visual-Aesthetics-How-Album-Covers-Represent-The-Artistry-Of-Musician.png",fit: BoxFit.cover,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
