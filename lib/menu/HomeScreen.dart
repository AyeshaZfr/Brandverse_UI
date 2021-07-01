import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'bottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
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
          ),
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
                            CardCatalouge('MEN'),
                            CardCatalouge('WOMEN'),
                            CardCatalouge('KIDS'),
                            CardCatalouge('SPORTS'),
                            CardCatalouge('ACCESSORIES'),
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
}
