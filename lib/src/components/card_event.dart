import 'package:event_organizer/src/components/info_card.dart';
import 'package:event_organizer/src/components/info_card_number.dart';
import 'package:event_organizer/src/components/info_card_percent.dart';
import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/imgs/plaza.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Live in The Plaza',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo[900]),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Downtown Longtown',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Live Music in the James...',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo[900]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'July 12, 2019\n6.00 PM to 11.00 PM',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo[900]),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: <Widget>[
                              Text('July 12, 2019',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: MediaQuery.of(context).size.height * .04,
                          width: MediaQuery.of(context).size.width * 0.17,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.indigo[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'New Order',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(height: 5),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InfoCardNumber(name: 'Price', number: '\$78', color: Colors.indigo[900]),
              InfoCardNumber(name: 'Sold', number: '120', color: Theme.of(context).accentColor),
              InfoCardNumber(name: 'Unsold', number: '78', color: Colors.red),
              InfoCardPercent(name: 'Registered Attendee',),
              InfoCard(name: 'Stop Sales'),
            ],
          )
        ],
      ),
    );
  }
}