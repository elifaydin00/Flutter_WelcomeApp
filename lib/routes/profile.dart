import 'package:flutter/material.dart';
import 'package:welcome_app/utils/styles.dart';
import 'package:welcome_app/utils/colors.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        //now comes body
        body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/59412434?s=400&u=d34eba02b196a8474edddf20cc69481cb5274310&v=4'),
                          radius: 50.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //Col
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, //start from top
                          children: <Widget>[
                            Text(
                              'Elif Aydin',
                              style: TextStyle(
                                fontFamily: 'BrandonText',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: AppColors.headingColor,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '@username',
                                  style: TextStyle(
                                    fontFamily: 'BrandonText',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.headingColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    //start col
                                    OutlinedButton(
                                      onPressed: () {
                                        //onclicked Edit Profile Page -> Change pp,name,@,bio,privacy
                                      },
                                      child: Text(
                                        'Edit Profile',
                                        style: kButtonLightTextStyle,
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: AppColors.secondary,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Icon(
                                      Icons.settings_applications,
                                      color: AppColors.headingColor,
                                      size: 30,
                                    ),
                                    //end col
                                  ],
                                )
                              ],
                            )
                          ],
                        ) //your 1st Row
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.primary,
                height: 30,
                thickness: 2.0,
              ),
              //now you have to inlude posts followers and followed (3 columns)
              Row(
                //inside one row make 3 columns
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Posts',
                        style: TextStyle(
                          color: AppColors.headingColor,
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '21',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.headingColor,
                        ),
                      ),
                      Text(
                        '780',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Following',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.headingColor,
                        ),
                      ),
                      Text(
                        '893',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ], //widgets
          ), //whole column
        ));
  }
}
