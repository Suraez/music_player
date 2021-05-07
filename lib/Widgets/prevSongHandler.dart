import 'package:flutter/material.dart';
// ignore: must_be_immutable
class PrevSongButton extends StatelessWidget {
  Function onPrevSongHandler;
  PrevSongButton(this.onPrevSongHandler);
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
        icon: Icon(Icons.skip_previous),
        onPressed: () => onPrevSongHandler('prev'),
        color: Colors.blue[400],
      ),
    );
  }
}