import 'package:flutter/material.dart';

// STATELESS WIDGET
class CardCatalouge extends StatelessWidget {
  const CardCatalouge(this.category);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Theme.of(context).cardTheme.shape,
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
      elevation: Theme.of(context).cardTheme.elevation,
    );
  }
}
