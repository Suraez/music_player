import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PauseButton extends StatelessWidget {
  Function onPlayHandler;
  PauseButton(this.onPlayHandler);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPlayHandler,
      child: Icon(
        Icons.pause,
        size: 50.0,
      ),
    );
  }
}


