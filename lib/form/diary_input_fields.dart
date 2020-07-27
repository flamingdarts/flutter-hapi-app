import 'package:flutter/material.dart';

import 'level_slider.dart';

class DiaryInputFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Highlight',
            ),
          ),
          LevelSlider('Energy'),
          LevelSlider('Focus'),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Which techniques did you try?',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Which moment of the day did you appreciate?',
            ),
          ),
        ],
      ),
    );
  }
}
