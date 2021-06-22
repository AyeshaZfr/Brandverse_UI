import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Category',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        elevation: 5.0,
        actions: [
          IconButton(
            padding: EdgeInsets.only(
              right: 30,
            ),
            onPressed: null,
            icon: Icon(
              Icons.shop_two_outlined,
              color: Colors.black,
            ),
            iconSize: 30,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 25,
                      ),
                      Expanded(
                        child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          children: <Widget>[
                            card('MEN'),
                            card('WOMEN'),
                            card('KIDS'),
                            card('SPORTS'),
                            card('ACCESSORIES'),
                          ],
                          crossAxisCount: 2,
                        ),
                      )
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          buildContainer(Icons.home, true),
          buildContainer(Icons.search, false),
          buildContainer(Icons.format_shapes, false),
          buildContainer(Icons.person, false)
        ],
      ),
    );
  }

  Card card(String category) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/cart.png'),
            height: 128,
          ),
          Text(
            category,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      elevation: 5,
    );
  }

  Container buildContainer(IconData icon, bool isActive) {
    return Container(
        height: 90,
        padding: EdgeInsets.only(left: 15, right: 15),
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(color: Colors.orange),
        child: Container(
            color: Colors.deepOrange,
            child: IconButton(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              onPressed: null,
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              iconSize: 33,
            )));
  }
}
