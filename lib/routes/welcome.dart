import 'package:flutter/material.dart';
import 'package:welcome_app/utils/dimensions.dart';
import 'package:welcome_app/utils/colors.dart';
import 'package:welcome_app/utils/styles.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
      body: SafeArea(
        maintainBottomViewPadding: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.network(
                  'https://icon-library.com/images/pink-phone-icon/pink-phone-icon-11.jpg'),
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                //this row is for SignUp and Login buttons
                children: <Widget>[
                  Expanded(
                    //use whole space in the row
                    flex: 1, //size 1x for Signup button
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/signup'); //To navigate between pages
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
                  ),
                  SizedBox(
                    //put a little space between Signup and Login buttons
                    width: 8.0,
                  ),
                  Expanded(
                    //use whole space in the row
                    flex: 1, //size 1x for login button
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'Login',
                          style: kButtonDarkTextStyle,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
