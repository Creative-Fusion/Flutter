import 'package:flutter/material.dart';
import 'package:todoey_app/screens/task_screens.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (context) => TaskData(), //previously builder 
          child: MaterialApp(
        home:TaskScreen(),
      ),
    );
  }
}
