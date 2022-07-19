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
        title: const Text('Plugin example app'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Opacity(
              opacity: _visible ? 1.0 : 0.3,
              child: const Text('I am visible'),
            ),
            ElevatedButton(
              onPressed: _toggleVisble,
              child: const Text('Toggle'),
            ),
          ],
        ),
      ),
    );
  }
}
