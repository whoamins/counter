// ignore: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 125, 143, 245),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: const Text(
            'Counter',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tap "-" to decrement',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            CounterWidget(),
            const Text(
              'Tap "+" to increment',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterStateWidget();
  }
}

class _CounterStateWidget extends State<StatefulWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              _decrement();
            },
            icon: const Icon(
              Icons.exposure_minus_1,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            _count.toString(),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              _increment();
            },
            icon: const Icon(
              Icons.plus_one,
            ),
          ),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      _count += 1;
    });
  }

  void _decrement() {
    setState(() {
      _count -= 1;
    });
  }
}
