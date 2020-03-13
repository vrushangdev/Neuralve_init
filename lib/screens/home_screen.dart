import '../widgets/clock_painter.dart';
import 'package:flutter/material.dart';
import 'package:neuralve/widgets/clock_painter.dart';
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
                icon: Icon(Icons.account_circle),
                iconSize: 30.0,
//Todo Implement Navigation to timer screen
                onPressed: (){},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return  Card(
                    child: Container(
                      width: 100.0,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios),
                              Text("11 March"),
                              Icon(Icons.arrow_forward_ios)

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                child: SizedBox(
                                  height: 300.0,
                                  width: 100.0,
                                  child: CustomPaint(
                                    painter: ClockPainter(),
                                    child: Container(height: 100,
                                    ),
                                    ),
                                ),

                              ),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Chip(

                                backgroundColor: Colors.black,
                                avatar: CircleAvatar(

                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.filter_center_focus,color: Colors.white,),
                                ),
                                label: Text('Focus',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                              ),
                              Chip(

                                backgroundColor: Colors.black,
                                avatar: CircleAvatar(

                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.favorite,color: Colors.white,),
                                ),
                                label: Text('Rest',
                                style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )

                  );

                },
              childCount: 1,
            ),
          ),


        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.notifications_active),
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
