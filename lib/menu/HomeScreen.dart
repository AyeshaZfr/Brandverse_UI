import 'package:flutter/material.dart';
import 'Card.dart';
import 'BottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                      Flexible(
                        child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          children: <Widget>[
                            CardCatalouge('MEN', const Color(0xFFFFC100)),
                            CardCatalouge('WOMEN', const Color(0xFF91FAFF)),
                            CardCatalouge('KIDS', const Color(0xFF00D1FF)),
                            CardCatalouge('SPORTS', const Color(0xFFf0BCFF)),
                            CardCatalouge(
                                'ACCESSORIES', const Color(0xF9009BEE)),
                          ],
                          crossAxisCount: 2,
                        ),
                      )
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        backgroundColor: Colors.orange[600],
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: BuildContainer(Icons.home, true),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BuildContainer(Icons.search, false),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BuildContainer(Icons.format_shapes, false),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BuildContainer(Icons.person, false),
            label: '',
          ),
        ],
      ),
    );
  }
}
