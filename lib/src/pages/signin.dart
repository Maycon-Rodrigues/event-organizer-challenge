import 'package:event_organizer/src/components/custom_button.dart';
import 'package:event_organizer/src/components/custom_textField.dart';
import 'package:event_organizer/src/pages/home.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'You are ready to go',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                      CustomTextField(),
                      SizedBox(height: 10),
                      CustomTextField(
                        hitText: 'Password',
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Login At:',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check_circle),
                            iconSize: 30,
                            color: Theme.of(context).accentColor,
                          ),
                          Text(
                            'Administrator',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.panorama_fish_eye),
                            iconSize: 30,
                            color: Colors.grey[300],
                          ),
                          Text(
                            'Issuer',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                          name: 'Sign in',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomePage()));
                          })
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -60,
            left: -50,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.circular(75),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.circular(45),
              ),
            ),
          ),
          Positioned(
            top: -50,
            left: 230,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
