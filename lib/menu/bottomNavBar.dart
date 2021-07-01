import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container buildContainer(IconData icon, bool isActive) {
  return Container(
      height: 90,
      width: double.infinity / 4,
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
