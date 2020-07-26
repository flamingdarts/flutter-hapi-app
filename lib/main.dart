import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hapi_app/model/diary.dart';

void main() => runApp(HapiApp());

class HapiApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HapiAppState();
  }
}

//data in this class is persistence. _ makes it private
class _HapiAppState extends State<HapiApp> {
  final diaryEntries = [
    Diary('Dancing in the moon', DateTime(2020, 9, 6, 12), 4, 6,
        'salsa dancing technicques', 'dancing under the moon shine'),
    Diary('Meet the president', DateTime(2020, 9, 6, 12), 4, 6,
        'salsa dancing technicques', 'dancing under the moon shine'),
    Diary('Driving nice car', DateTime(2020, 9, 6, 12), 4, 6,
        'salsa dancing technicques', 'dancing under the moon shine'),
    Diary('Traveling around', DateTime(2020, 9, 6, 12), 4, 6,
        'salsa dancing technicques', 'dancing under the moon shine'),
  ];

  static final String _happyAsset = 'assets/happy.svg';
  final Widget svgIcon = SvgPicture.asset(
    _happyAsset,
  );
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hapi App'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: null,
                title: Text(diaryEntries[index].highlight),
                subtitle: Text(diaryEntries[index].date.toString()),
                leading: Container(
                  constraints: BoxConstraints(maxWidth: 40.0),
                  alignment: Alignment.centerLeft,
                  child: svgIcon,
                ),
              ),
            );
          },
          itemCount: diaryEntries.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
