import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer(this.icon, this.isActive);
  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isActive ? Colors.orange[300] : null,
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          onPressed: null,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          iconSize: 32,
        ));
  }
}
