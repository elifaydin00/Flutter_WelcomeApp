import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_app/routes/login.dart';
import 'package:welcome_app/routes/welcome.dart';
import 'package:welcome_app/routes/signup.dart';
import 'package:welcome_app/routes/password.dart';
import 'package:welcome_app/routes/profile.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/password': (context) => Password(),
        '/profile': (context) => Profile(),
      },
    ));
