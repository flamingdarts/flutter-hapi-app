import 'package:flutter/material.dart';

class LevelSlider extends StatefulWidget {
  final String _title;
  LevelSlider(this._title);
  @override
  _LevelSliderState createState() => _LevelSliderState(_title);
}

class _LevelSliderState extends State<LevelSlider> {
  double _value = 0;

  double get value => _value;

  final String _title;
  _LevelSliderState(this._title);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 50.0,
          child: Text(_title),
        ),
        Slider(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              print(_value);
            });
          },
          divisions: 10,
          max: 10,
          min: 0,
          label: _value.round().toString(),
        )
      ],
    );
  }
}
