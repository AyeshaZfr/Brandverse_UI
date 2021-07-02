import 'package:flutter/material.dart';

class CardCatalouge extends StatelessWidget {
  final String category;
  final Color color;
  const CardCatalouge(this.category, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Theme.of(context).cardTheme.shape,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 60),
            height: 25,
            width: 80,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: color,
                  width: 3.5,
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage(
              'assets/images/cart.png',
            ),
            height: 110,
            color: Colors.black.withOpacity(0.3),
          ),
          Text(
            category,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      elevation: Theme.of(context).cardTheme.elevation,
    );
  }
}
