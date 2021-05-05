import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySlider extends StatefulWidget {
  // double maxValue;
  // MySlider(this.maxValue);
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double sliderValue = 20.0;
  // double maxValue;

  // _MySliderState(this.maxValue);

  // handler when user slides along the slider
  void onChangeHandler(value) {
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: sliderValue,
      min: 0,
      max: 100.0,
      onChanged: onChangeHandler,
    );
  }
}
