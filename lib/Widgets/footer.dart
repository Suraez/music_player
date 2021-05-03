import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Developed by',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Text(
            'Suraj Ojha',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
