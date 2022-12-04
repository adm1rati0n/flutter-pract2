import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.black,
                  height: 45,
                  child: const Center(
                      child: Text(
                        "Администратор",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              )
            ],
          )),
    );
  }
}