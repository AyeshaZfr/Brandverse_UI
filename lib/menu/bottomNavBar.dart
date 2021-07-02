import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer(this.icon, this.isActive);
  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isActive ? Colors.deepOrange : null,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              iconSize: 30,
            )));
  }
}
