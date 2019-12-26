class TimeTableData{
  String days;
  String pone;
  String ptwo;
  String pthree;
  String pfour;
  String pfive;
  String psix;
  String pseven;
  String peight;
  
  TimeTableData({
    this.days,this.pone,this.ptwo,this.pthree,this.pfour,this.pfive,this.psix,this.pseven,this.peight
  });

  
  static List<TimeTableData> getData(){
    return <TimeTableData>[
      TimeTableData(
        days: "Monday",
        pone: "DS",
        ptwo: "AI",
        pthree: "MC",
        pfour: "OS",
        pfive: "DBMS",
        psix: "OOP",
        pseven: "TOC",
        peight: "CD"
      ),
      TimeTableData(
        days: "Tuesday",
        pone: "DS",
        ptwo: "AI",
        pthree: "MC",
        pfour: "OS",
        pfive: "DBMS",
        psix: "OOP",
        pseven: "TOC",
        peight: "CD"
      ),
      TimeTableData(
        days: "Wednesday",
        pone: "DS",
        ptwo: "AI",
        pthree: "MC",
        pfour: "OS",
        pfive: "DBMS",
        psix: "OOP",
        pseven: "TOC",
        peight: "CD"
      ),
      TimeTableData(
        days: "Thursday",
        pone: "DS",
        ptwo: "AI",
        pthree: "MC",
        pfour: "OS",
        pfive: "DBMS",
        psix: "OOP",
        pseven: "TOC",
        peight: "CD"
      ),
      TimeTableData(
        days: "Friday",
        pone: "DS",
        ptwo: "AI",
        pthree: "MC",
        pfour: "OS",
        pfive: "DBMS",
        psix: "OOP",
        pseven: "TOC",
        peight: "CD"
      ),
      TimeTableData(
        days: "saturday",
        pone: "DS",
        ptwo: "AI",
        pthree: "MC",
        pfour: "OS",
        pfive: "DBMS",
        psix: "OOP",
        pseven: "TOC",
        peight: "CD"
      ),
      


    ];
  }




}

class ViewState{
  bool state;
  ViewState({this.state});
}