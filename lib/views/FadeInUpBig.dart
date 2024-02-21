// ignore_for_file: file_names
import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Colors,
        Container,
        Scaffold,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import 'package:animate_do/animate_do.dart';

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App'),
      ),
      body: Center(
        child: FadeInUpBig(
          duration:
              Duration(milliseconds: 800), // Set the duration of the animation
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Text(
              'Animated Container',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
