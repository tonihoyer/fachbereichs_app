import 'package:flutter/material.dart';

class KalenderScreen extends StatefulWidget {
  @override
  _KalenderScreenState createState() => _KalenderScreenState();
}

class _KalenderScreenState extends State<KalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalender"),
      ),
    );
  }
}
