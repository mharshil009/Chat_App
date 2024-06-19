import 'package:chat_app/screens/about.dart';
import 'package:chat_app/screens/accountscreen.dart';
import 'package:chat_app/screens/chatscreen.dart';
import 'package:chat_app/screens/editprofile.dart';
import 'package:chat_app/screens/homepage.dart';
import 'package:chat_app/screens/info.dart';
import 'package:chat_app/screens/interest.dart';
import 'package:chat_app/screens/landingpage.dart';
import 'package:chat_app/screens/login.dart';
import 'package:chat_app/screens/newprofile.dart';
import 'package:chat_app/screens/notification.dart';
import 'package:chat_app/screens/profile.dart';
import 'package:chat_app/screens/setprofile.dart';
import 'package:chat_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat_app/screens/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'Acme',
      ),
      debugShowCheckedModeBanner: false,
      home: Editprofile(),
    );
  }
}
