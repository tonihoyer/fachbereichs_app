import 'package:fachbereichs_app/screens/kalender_screen.dart';
import 'package:fachbereichs_app/screens/personen_screen.dart';
import 'package:fachbereichs_app/screens/raum_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Fachbereich AI"), backgroundColor: Colors.blue[900]),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset("assets/images/Hochschule_46.jpg"),
              ),
              buildButton(context,"Kalender",Icons.calendar_today, KalenderScreen()),
              buildButton(context,"Personen",Icons.person_pin, PersonenScreen()),
              buildButton(context,"Raum",Icons.room, RaumScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildButton(BuildContext context,text,icon,widget) {
    return Padding(
              padding: const EdgeInsets.all(12.0),
              child: RaisedButton.icon(
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                color: Colors.blue[900],
                textColor: Colors.white,
                icon: Icon(icon),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => widget,
                      ));
                },
              ),
            );
  }

}
