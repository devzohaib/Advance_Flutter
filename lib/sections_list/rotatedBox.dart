import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int _turns;
  late double _value;

  @override
  void initState() {
    super.initState();
    _turns = 0;
    _value = 0.0;
  }

  void _onChanged(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sections List number '),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Slider(
                value: _value,
                onChanged: _onChanged,
                min: 0.0,
                max: 4.0,
              ),
              RotatedBox(
                quarterTurns: _turns,
                child: Text('hello world'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
