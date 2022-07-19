import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    _visible = true;
  }

  void _toggleVisble() {
    setState(() {
      _visible = !_visible;
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
        child: Column(
          children: const <Widget>[
            Text('Hello world!'),
          ],
        ),
      ),
    );
  }
}
