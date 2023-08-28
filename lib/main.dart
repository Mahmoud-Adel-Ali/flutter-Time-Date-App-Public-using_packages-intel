// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, unused_local_variable, curly_braces_in_flow_control_structures, unrelated_type_equality_checks

//to start any Application ,you should write the code
// import 'dart:async';

import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TimeDate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TimeDate extends StatefulWidget {
  const TimeDate({super.key});
  @override
  State<TimeDate> createState() => _TimeDateState();
}

class _TimeDateState extends State<TimeDate> {
  String weekDay = "";
  String date = "";
  String time = "";

  changeTimeAllSecond() {
    setState(() {
      weekDay = DateFormat("EEEE").format(DateTime.now());
      date = DateFormat("MMMM dd ,y").format(DateTime.now());
      time = DateFormat("hh:mm:ss a").format(DateTime.now());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      changeTimeAllSecond();
    });
    // changeTimeA
    // llSecond();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 214, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 105, 0),
        centerTitle: true,
        title: Text(
          "Time & Date App",
          style: TextStyle(fontSize: 29),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Date is :${weekDay} ",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              date,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              time,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
