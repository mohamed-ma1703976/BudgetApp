import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_budget_ui/data/data.dart';

import 'Widgets/BarChart.dart';
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
            pinned: true,
            forceElevated: true,
            expandedHeight: 70.0,
            leading: IconButton(icon: Icon(Icons.settings, color: Colors.white,),
            iconSize: 30.0,
                onPressed: (){

                },),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Simple Budget"),
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add),
                  iconSize: 30.0 ,
                  onPressed: (){

              })
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
            return Container(height: 200.0,
            margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                    color: Colors.black12, 
                    offset: Offset(0, 2), 
                    blurRadius: 5.0),
                ],
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: BarChart(weeklySpending),

            );
          },
            childCount: 1,
          )
          )
        ],
      ),

    );
  }
}
