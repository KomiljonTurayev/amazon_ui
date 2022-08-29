import 'package:amazon_ui/pages/home_page.dart';
import 'package:amazon_ui/pages/sign_in_page.dart';
import 'package:amazon_ui/pages/sign_up_page.dart';
import 'package:amazon_ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id:(context) => SplashPage(),
        HomePage.id:(context) => HomePage(),
        SignUpPage.id:(context) => SignUpPage(),
        SignInPage.id:(context) => SignInPage(),
      },
    );
  }
}
