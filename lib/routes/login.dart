import 'package:flutter/material.dart';
import 'package:welcome_app/utils/styles.dart';
import 'package:welcome_app/utils/colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign-In',
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
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                    Navigator.pushNamed(context, '/password');
                  },
                  textColor: Colors.pinkAccent,
                  child: Text(
                    'Forgot Password?',
                    style: kButtonLightTextStyle,
                  ),
                ),
                Container(
                    height: 40,
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                            '/profile'); //for now, navigate to profile page once logged in
                      },
                      child: Text(
                        'Login',
                        style: kButtonDarkTextStyle,
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                      ),
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Does not have account?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/signup'); //navigate to sign up page
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'Signup',
                            style: kButtonLightTextStyle,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login with Google', //make clickable
                        style: kHeadingTextStyle,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.email_rounded,
                        color: AppColors.primary,
                        size: 60,
                      ),
                    ], //
                  ),
                ),
              ],
            )));
  }
}
