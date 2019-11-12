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
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton.icon(
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Kalender",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  icon: Icon(Icons.calendar_today),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    navigate(context, KalenderScreen());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton.icon(
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Personen",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  icon: Icon(Icons.person_pin),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    navigate(context, PersonenScreen());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton.icon(
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Raum",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  icon: Icon(Icons.room),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    navigate(context, RaumScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate(BuildContext context, widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}
