import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                      height: 200.0,
                      width: 350.0,
                      child: Carousel(
                        images: [
                          NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                          NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),

                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.blue,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.transparent,
                        borderRadius: true,
                        moveIndicatorFromBottom: 180.0,
                        noRadiusForIndicator: true,
                      )
                  ),
              SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Image.network("https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg",height: 300,width: MediaQuery.of(context).size.width /2.2,fit: BoxFit.fill,),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Image.network("https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg",height: 150,width: MediaQuery.of(context).size.width /2.2,fit: BoxFit.fill,),

                      ),
                      Container(
                        child: Image.network("https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg",height: 150,width: MediaQuery.of(context).size.width /2.2,fit: BoxFit.fill,),

                      ),
                    ],
                  ),

                ],
              )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
