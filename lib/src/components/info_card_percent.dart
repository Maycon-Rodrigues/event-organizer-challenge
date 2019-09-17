import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class InfoCardPercent extends StatelessWidget {
  final String name;

  InfoCardPercent({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .33,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          LinearPercentIndicator(
                width: 95.0,
                lineHeight: 12.0,
                percent: 0.6,
                backgroundColor: Colors.grey,
                progressColor: Theme.of(context).accentColor,
              ),
        ],
      ),
    );
  }
}