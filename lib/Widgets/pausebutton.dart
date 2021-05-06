import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PauseButton extends StatelessWidget {
  Function onPlayHandler;
  PauseButton(this.onPlayHandler);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.pause),
        onPressed: onPlayHandler,
        iconSize: 64.0,
        color: Colors.white,
      );
  }
}


