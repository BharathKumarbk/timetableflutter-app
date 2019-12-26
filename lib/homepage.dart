import 'package:flutter/material.dart';
import 'package:timetableflutterbapp/data.dart';
import 'package:timetableflutterbapp/tablelisttile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool vstate = ViewState().state;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Time Table",
            style: TextStyle(
              color: Colors.black,
            
              fontSize: 25.0
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            tableListTile("CSE", Colors.green, Colors.greenAccent, Icons.code,context),
            tableListTile("IT", Colors.blue, Colors.blueAccent, Icons.computer,context),
            tableListTile("MECH", Colors.red, Colors.redAccent, Icons.speaker_group,context),
            tableListTile("ECE", Colors.teal, Colors.tealAccent, Icons.track_changes,context),
            tableListTile("EEE", Colors.orange, Colors.orangeAccent, Icons.transform,context),
            tableListTile("CIVIL", Colors.purple, Colors.purpleAccent, Icons.view_comfy,context),
                
          ],
        ),
      ),
    );
  }
}
