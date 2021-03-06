import 'package:flutter/material.dart';

// personal imports
import './screens/home.dart';

void main() => runApp(new HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text in App Bar'),
        ),
        body: Home(),
      ),
    );
  }
}
