import 'package:app_with_changeable_background/color_generator.dart';
import 'package:flutter/material.dart';

void main() => runApp(GreetingApp());

// The main application
class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter widget',
      home: TapActivePage(),
    );
  }
}

// Page which will change its color
class TapActivePage extends StatefulWidget {
  @override
  _TapActivePageState createState() => _TapActivePageState();
}

// State of page with changeable color
class _TapActivePageState extends State<TapActivePage> {
  final ColorGenerator colorGenerator = ColorGenerator();

  // Function which changes the background and text colors
  void _handleTap() {
    setState(() {
      colorGenerator.generate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _handleTap,
        child: Scaffold(
          body: Center(
            child: Text("Hey there",
                textScaleFactor: 3.0,
                style: TextStyle(
                    color: colorGenerator.getContrastColor(),
                    fontFamily: 'Monospace')),
          ),
          backgroundColor: colorGenerator.getGeneratedColor(),
        ));
  }
}
