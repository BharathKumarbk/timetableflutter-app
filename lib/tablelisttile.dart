

import 'package:flutter/material.dart';


tableListTile(String title, Color color1,Color color2, IconData icon,context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: (){
         Navigator.pushNamed(context, "/year");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(colors: <Color>[
               color1,
               color2
             ], )
           ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: <Widget>[
                Text(
                  "$title",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Expanded(child: Container()),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 40.0,
                )
              ],
            ),
          ),
            ),
        ),
      ),
    );
  }

