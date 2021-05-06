import 'package:flutter/material.dart';
// ignore: must_be_immutable
class PrevSongButton extends StatelessWidget {
  Function onPrevSongHandler;
  PrevSongButton(this.onPrevSongHandler);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.skip_previous),
      onPressed: () => onPrevSongHandler('prev'),
      color: Colors.white,
    );
  }
}