import 'package:welcome_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:welcome_app/utils/colors.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Social Media App',
          style: kAppBarTitleTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://cdn.pixabay.com/photo/2016/11/30/17/10/email-1873375_960_720.png',
                    width: 250,
                    height: 250,
                  ),
                ]),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    color: Colors.pink,
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0,
                  ),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mail',
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
                    'Send Mail', //onclicked send mail and receive code
                    style: kButtonDarkTextStyle,
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                )),
          ], //children of column
        ),
      ),
    );
  }
}
