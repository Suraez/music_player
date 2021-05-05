import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayButton extends StatelessWidget {
  Function onPlayHandler;
  PlayButton(this.onPlayHandler);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPlayHandler,
      child: Icon(
        Icons.play_arrow,
        size: 50.0,
      ),
    );
  }
}
