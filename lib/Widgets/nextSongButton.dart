import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NextSongButton extends StatelessWidget {
  Function onNextSongHandler;
  NextSongButton(this.onNextSongHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            spreadRadius: 2.0,
            color: Colors.blue,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(Icons.skip_next),
        onPressed: () => onNextSongHandler('next'),
        color: Colors.blue[400],
      ),
    );
  }
}
