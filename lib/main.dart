import 'package:flutter/material.dart';

import 'src/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF1A9ECB),
        scaffoldBackgroundColor: Color(0xFF0E171E),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0E171E),
        ),
      ),
      home: HomePage(),
    );
  }
}
