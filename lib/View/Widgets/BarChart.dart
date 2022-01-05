import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  @override
  final List<double> expenses;

  BarChart(this.expenses);

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Weekly Spending",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back), iconSize: 30.0, onPressed: () {}),
            Text(
              "Nov 10 , 2019 - Nov 16 ",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2),
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                iconSize: 30.0,
                onPressed: () {}),
          ],
        )
      ],
    );
  }
}
