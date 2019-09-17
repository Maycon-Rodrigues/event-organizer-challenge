import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String name;

  InfoCard({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .13,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
