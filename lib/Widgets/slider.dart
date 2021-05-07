import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySlider extends StatelessWidget {
  Duration sliderValue, totalLength;
  Function onSeekHandler;
  MySlider(this.sliderValue, this.totalLength, this.onSeekHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${sliderValue.inMinutes}: ${sliderValue.inSeconds.remainder(60)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              Slider(
                activeColor: Colors.blue[200],
                inactiveColor: Colors.black12,
                value: sliderValue.inSeconds.toDouble(),
                max: totalLength.inSeconds.toDouble(),
                onChanged: (double value) => onSeekHandler(value.toInt()),
              ),
              Text(
                '${totalLength.inMinutes}: ${totalLength.inSeconds.remainder(60)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
