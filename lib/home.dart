import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;

  void change() {
    setState(() {
      number = Random().nextInt(6) + 1;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Roller",
          style: TextStyle(
            fontFamily: "Harabara",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/img/dice$number.png'),
                iconSize: 150,
                onPressed: () {
                  change();
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Click On Icon To Roller Dice",
                style: TextStyle(fontFamily: "Harabara", fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                  icon: Icon(
                    Icons.replay,
                    size: 30,
                  ),
                  onPressed: () {
                    reset();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
