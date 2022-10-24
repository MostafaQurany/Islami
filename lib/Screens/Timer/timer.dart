import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimerWedgit extends StatefulWidget {
  const TimerWedgit({Key? key}) : super(key: key);

  @override
  State<TimerWedgit> createState() => _TimerWedgitState();
}

class _TimerWedgitState extends State<TimerWedgit> {
  String formattedTime = DateFormat('kk:mm:ss').format(DateTime.now());
  String hour = DateFormat('a').format(DateTime.now());
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
  }

  void _update() {
    setState(() {
      formattedTime = DateFormat('KK:mm:ss').format(DateTime.now());
      hour = DateFormat('a').format(DateTime.now());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(

            color: Colors.orange
          ),
          child: Text('$formattedTime : $hour',style: Theme.of(context).textTheme.headlineLarge,textAlign: TextAlign.center),
        )
      ],
    );
  }
}
