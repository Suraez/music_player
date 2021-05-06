import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayButton extends StatelessWidget {
  Function onPlayHandler;
  PlayButton(this.onPlayHandler);
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.play_arrow),
      iconSize: 64.0,
      onPressed: onPlayHandler,
      color: Colors.white,
    );
  }
}
