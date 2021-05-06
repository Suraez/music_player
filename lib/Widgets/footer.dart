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
            'Made with ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Text(
            ' by Suraj Ojha',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
