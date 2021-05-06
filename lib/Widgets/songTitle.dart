import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SongTitle extends StatelessWidget {
  String title;
  String artists;

  SongTitle(this.title, this.artists);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Daughter'
            ),
          ),
          Text(
            artists,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              )),
        ],
      ),
    );
  }
}
