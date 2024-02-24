import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:todo/Screens/home_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('Box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // theme: ThemeData(primaryColor: Colors.red),
    );
  }
}
