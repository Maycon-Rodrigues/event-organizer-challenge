import 'package:event_organizer/src/components/card_event.dart';
import 'package:flutter/material.dart';

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, left: 5, right: 5),
              height: 130,
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.clear_all,
                        color: Colors.white,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Michigan',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              'Daniel K',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/imgs/uifaces2.jpg'),
                            maxRadius: 15,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.arrow_back, size: 20, color: Colors.white),
                        Text('Event Category',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: <Widget>[
                              Text('Entertainment',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                        Text('Sort By',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: <Widget>[
                              Text('Housefull',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 5,
              top: 110,
              child: Column(
                children: <Widget>[
                  CardEvent(),
                  CardEvent(),
                  CardEvent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
