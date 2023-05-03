
import 'package:flutter/material.dart';

InputDecoration Appinputdecration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.all(15),
    border: OutlineInputBorder(
    ),
    labelText: label
  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton .styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.amberAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    )

  );
}

SizedBox SizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: child,
    ),
  );
}