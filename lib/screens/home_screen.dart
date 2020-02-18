
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(

            floating: true,
            pinned: true,
            forceElevated: true,
            expandedHeight: 100.0,
            leading: IconButton(
                icon: Icon(Icons.bluetooth_searching),
                iconSize: 30.0,
//                Todo Use Share Package to open and connect via bluetooth .
                onPressed: (){},
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Welcome Onboard !',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.timelapse),
                iconSize: 30.0,
//Todo Implement Navigation to timer screen
                onPressed: (){},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return Placeholder(
                    color: Colors.red,
                    fallbackHeight: 100.0,

                  );

                },
              childCount: 10,
            ),
          ),


        ],

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
