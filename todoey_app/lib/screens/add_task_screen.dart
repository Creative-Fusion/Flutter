import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
  
     child: Container(
           padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
   
          
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Text',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            autofocus: true,
            // autocorrect: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
            newTaskTitle = newText;
            print(newTaskTitle);
            }
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton(
           
            child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                )),
            color: Colors.lightBlueAccent,
            onPressed: (){
              Provider.of<TaskData>(context, listen: false).updateTask(newTaskTitle);
              Navigator.pop(context);
            },
          ),
        ],
      ),
     ),
    );

  }
}
