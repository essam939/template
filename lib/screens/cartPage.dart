import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final itemsList = List<String>.generate(10, (n) => "List item ${n}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: generateItemsList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: new FloatingActionButton.extended(
        onPressed: () {},
     //   icon: new Icon(Icons),
        label: const Text("PLACE THIS ORDER : \u0024 12,99"),
      ),
    );}
  ListView generateItemsList() {
    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          background: slideRightBackground(),
          secondaryBackground: slideLeftBackground(),
            // ignore: missing_return
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.endToStart) {
                final bool res = await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text(
                            "Are you sure you want to delete ${itemsList[index]}?"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {
                              // TODO: Delete the item from DB etc..
                              setState(() {
                                itemsList.removeAt(index);
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
                return res;
              } else {
                // TODO: Navigate to edit page;
              }
            },
          key: Key(itemsList[index]),
          child: InkWell(
              onTap: () {
                print("${itemsList[index]} clicked");
              },
              child:Container(
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Image.network("https://img.freepik.com/free-psd/modern-man-smiling_1194-11653.jpg?size=338&ext=jpg",fit: BoxFit.contain,height: 100,width: 100,)),
                      Container(
                        child: Column(
                        children: <Widget>[
                          Text("Round Neck Dresses"),
                          SizedBox(height: 5,),
                          Text("Size : S   Color : Red",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 5,),
                          Text("\u0024 1299",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.add),onPressed: (){},),
                             Container(
                                 decoration: BoxDecoration(
                                   border: Border.all(
                                     width: 1,
                                     color: Colors.grey//                   <--- border width here
                                   ),
                                   borderRadius: BorderRadius.all(
                                       Radius.circular(5.0) //         <--- border radius here
                                   ),
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Text("1",style: TextStyle(color: Colors.blue),),
                                 )),
                            IconButton(icon: Icon(Icons.remove),onPressed: (){},),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),


        );
      },
    );
  }
  Widget slideRightBackground() {
    return Container(
      color: Colors.blue,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              " Edit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}
