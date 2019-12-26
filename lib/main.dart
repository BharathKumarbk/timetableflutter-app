import 'package:flutter/material.dart';
import 'package:timetableflutterbapp/homepage.dart';
import 'package:timetableflutterbapp/table.dart';
import 'package:timetableflutterbapp/years.dart';

void main() => runApp(TimeTable());

class TimeTable extends StatefulWidget {
  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(BuildContext context)=>HomePage(),
        '/year':(BuildContext context)=>YearTable(),
        '/table':(BuildContext context)=>TableData(),
      },
    );
  }
}