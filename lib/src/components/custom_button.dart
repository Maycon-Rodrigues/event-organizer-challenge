import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {  

  final String name;
  final Function onTap;
  CustomButton({@required this.name, @required this.onTap});

  @override
  Widget build(BuildContext context) {    
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * .04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).accentColor,
                        offset: Offset(0, 20),
                        blurRadius: 20.0)
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [Theme.of(context).accentColor, Color(0xFF2BF7C7)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
