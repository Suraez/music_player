import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PauseButton extends StatelessWidget {
  Function onPlayHandler;
  PauseButton(this.onPlayHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
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
          icon: Icon(Icons.pause),
          onPressed: onPlayHandler,
          iconSize: 64.0,
          color: Colors.blue[400],
        ),
    );
  }
}


