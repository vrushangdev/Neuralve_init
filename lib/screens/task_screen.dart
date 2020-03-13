import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('tasks'),
      centerTitle: true,
        elevation: 4.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.timer),
              title: Text("task Name",
              style: TextStyle(fontSize: 26),
              ),
              subtitle: Text("task category ..",style: TextStyle(fontSize: 16),),
              ),

              ),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        onPressed: (){
          //TODO: Navigate to add new tak screen .
        },
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            title: Text("Tasks"),
            
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            title: Text("Timer"),
          ),
        ],
      ),
    );
  }
}