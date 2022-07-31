import 'package:flutter/material.dart';
import 'package:myproject1/screens/admin_page.dart';
import 'package:myproject1/screens/complaint_view.dart';
import 'package:myproject1/screens/screen_login.dart';
import 'package:myproject1/screens/homepage.dart';
import 'package:myproject1/screens/login_screen.dart';
import 'package:myproject1/screens/student_reg.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ScreenAdmin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
