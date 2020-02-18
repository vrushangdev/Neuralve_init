import 'package:flutter/material.dart';

class PomoScreen extends StatefulWidget {
  @override
  _PomoScreenState createState() => _PomoScreenState();
}

class _PomoScreenState extends State<PomoScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double totalTimeSpent = 0 ;
    double maxTime =  25;
    double totalTimeLeft = 0;
    final double percent = totalTimeLeft/maxTime;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tracking Time ...'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            iconSize: 30.0,
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: ,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              height: 250.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(
                    color: Colors.black,
                    offset: Offset(0,2),
                    blurRadius: 6.0,
                ),]
              ),
            )
          ],
        ),
      ),
    );
  }
}
