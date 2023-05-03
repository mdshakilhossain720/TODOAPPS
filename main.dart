import 'package:flutter/material.dart';
import 'package:todoapps/ToDoApps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        home: ToDoApps(),
    title:("TodoApps") ,

    );
  }
}
