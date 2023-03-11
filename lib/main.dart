import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/screens/home.dart';

void main() {
  runApp(const NewsApp(

  ));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key, });


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(color: Colors.black, size: 25),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color.fromRGBO(255, 167, 38, 1),
          elevation: 1.0,
        ),
        
      ),
     
      home: const HomePage(
        
      ),
    );
  }
}
