import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject1/db/model/data_model.dart';
import 'package:myproject1/presentation/admin/admin_page.dart';
import 'package:myproject1/screens/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentRegisterModelAdapter().typeId)) {
    Hive.registerAdapter(StudentRegisterModelAdapter());
  }
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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
