import 'package:flutter/material.dart';
import 'package:timetableflutterbapp/data.dart';

class TableData extends StatefulWidget {
  @override
  _TableDataState createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {
  DataColumn dataColumn(String title) {
    return DataColumn(
        label: Text(
      "$title",
      style: TextStyle(fontSize: 20.0,color: Colors.black),
    ));
  }

  List<TimeTableData> datas;

  @override
  void initState() {
    datas = TimeTableData.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white38,
                child: DataTable(
                  columns: [
                    dataColumn("Days"),
                    dataColumn("1"),
                    dataColumn("2"),
                    dataColumn("3"),
                    dataColumn("4"),
                    dataColumn("5"),
                    dataColumn("6"),
                    dataColumn("7"),
                    dataColumn("8"),
                  ],
                  rows: datas
                      .map((data) => DataRow(cells: [
                            DataCell(
                              Text(
                                data.days,
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            DataCell(
                              Text(data.pone),
                            ),
                            DataCell(
                              Text(data.ptwo),
                            ),
                            DataCell(
                              Text(data.pthree),
                            ),
                            DataCell(
                              Text(data.pfour),
                            ),
                            DataCell(
                              Text(data.pfour),
                            ),
                            DataCell(
                              Text(data.psix),
                            ),
                            DataCell(
                              Text(data.pseven),
                            ),
                            DataCell(
                              Text(data.peight),
                            ),
                          ]))
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
