import 'package:flutter/material.dart';

class RaumScreen extends StatefulWidget {
  @override
  _RaumScreenState createState() => _RaumScreenState();
}

class _RaumScreenState extends State<RaumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raum"),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}
