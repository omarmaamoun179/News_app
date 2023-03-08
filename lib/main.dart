import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/screens/home.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            // ignore: deprecated_member_use
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
           titleTextStyle: TextStyle(color: Colors.black),
            elevation: 0.0,
            backgroundColor: Colors.white),
      ),
      home: HomePage(),
    );
  }
}


