import 'package:flutter/material.dart';
import 'package:myflutterapp/layers/presentation/ui/pages/launch_page.dart';
import 'package:myflutterapp/layers/presentation/ui/pages/pokemon_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LaunchPage(),
    );
  }
}
