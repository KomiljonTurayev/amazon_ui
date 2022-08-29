import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Instagram"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.asset('assets/images/amazon.png',
                height: 80,
                    width: 80,
                ),
              )
            ],
          ),
      ),
    );
  }
}
