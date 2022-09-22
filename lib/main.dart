import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject1/db/model/data_model.dart';
import 'package:myproject1/presentation/admin/admin_page.dart';
import 'package:myproject1/presentation/complaints/complaint_vie.dart';
import 'package:myproject1/presentation/login/screen_login.dart';

import 'package:myproject1/presentation/student/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentRegisterModelAdapter().typeId)) {
    Hive.registerAdapter(StudentRegisterModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ComplainRegisterodelAdapter().typeId)) {
    Hive.registerAdapter(ComplainRegisterodelAdapter());
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEM HOSTEL',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ScreenLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
