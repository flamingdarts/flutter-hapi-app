import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(HapiApp());

class HapiApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HapiAppState();
  }
}

//data in this class is persistence. _ makes it private
class _HapiAppState extends State<HapiApp> {
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
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('Dancing in the rain'),
                subtitle: Text('2020-04-12'),
                leading: Container(
                  constraints: BoxConstraints(maxWidth: 40.0),
                  alignment: Alignment.centerLeft,
                  child: svgIcon,
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Meeting Chuck Norris'),
                subtitle: Text('2020-04-11'),
                leading: Container(
                  constraints: BoxConstraints(maxWidth: 40.0),
                  alignment: Alignment.centerLeft,
                  child: svgIcon,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
