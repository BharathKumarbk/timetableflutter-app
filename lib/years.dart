
import 'package:flutter/material.dart';
import 'package:timetableflutterbapp/tablelisttile.dart';


class YearTable extends StatefulWidget {
  @override
  _YearTableState createState() => _YearTableState();
}

class _YearTableState extends State<YearTable> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        leading: FlatButton(
          onPressed: (){Navigator.pop(context);},
                  child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "CSE  III-Year",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
      ),
      body: ListView(
          children: <Widget>[
            tableListTile("I Year", Colors.green, Colors.greenAccent, Icons.arrow_forward_ios,context),
            tableListTile("II Year", Colors.blue, Colors.blueAccent, Icons.arrow_forward_ios,context),
            tableListTile("III Year", Colors.red, Colors.redAccent, Icons.arrow_forward_ios,context),
            tableListTile("IV Year", Colors.teal, Colors.tealAccent, Icons.arrow_forward_ios,context),
            
          ],
        ),
      ),
    );
  }
}