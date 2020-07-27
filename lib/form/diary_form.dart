import 'package:flutter/material.dart';
import 'package:hapi_app/form/diary_input_fields.dart';
import 'package:hapi_app/model/diary.dart';

class DiaryForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your diary'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: <Widget>[
            DiaryInputFields(),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              width: double.infinity,
              child: RaisedButton(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      Diary('TEst', DateTime(2020, 9, 6, 13), 2, 3, 'used',
                          'moments'),
                    );
                    print("Pressed saved!");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
