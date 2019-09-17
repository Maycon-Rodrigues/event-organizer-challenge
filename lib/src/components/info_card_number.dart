import 'package:flutter/material.dart';

class InfoCardNumber extends StatelessWidget {
  final String name;
  final String number;
  final Color color;

  InfoCardNumber({@required this.name, @required this.number, @required this.color});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.07,
      width: MediaQuery.of(context).size.width*.13,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
          Text(number, style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w800),)
        ],
      ),
    );
  }
}