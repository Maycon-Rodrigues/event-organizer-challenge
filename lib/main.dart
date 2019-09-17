import 'package:event_organizer/src/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Event Organizer',
      theme: ThemeData(
        primaryColor: Color(0xFF5257F1),
        accentColor: Color(0xFF2DCEA7),
      ),
      home: SignIn(),
    );
  }
}