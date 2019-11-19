import 'package:flutter/material.dart';

class PersonBomsdorfScreen extends StatefulWidget {
  @override
  _PersonBomsdorfScreenState createState() => _PersonBomsdorfScreenState();
}

class _PersonBomsdorfScreenState extends State<PersonBomsdorfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birgit Bomsdorf"),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}
