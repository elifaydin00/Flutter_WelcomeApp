import 'package:welcome_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:welcome_app/utils/colors.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Social Media App',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'BrandonText',
                  color: Colors.pink,
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              )),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mail',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'GSM',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 40,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: OutlinedButton(
                child: Text(
                  'Register', //onclicked Register
                  style: kButtonDarkTextStyle,
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
              )),
        ]),
      ),
    );
  }
}
