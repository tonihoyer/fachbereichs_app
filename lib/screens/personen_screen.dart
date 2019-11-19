import 'package:fachbereichs_app/screens/person_bomsdorf_screen.dart';
import 'package:flutter/material.dart';

class PersonenScreen extends StatefulWidget {
  @override
  _PersonenScreenState createState() => _PersonenScreenState();
}

class _PersonenScreenState extends State<PersonenScreen> {

  List<String> person = [
    "Bomsdorf, Birgit",
    "Bühler, Ulrich",
    "Fischer, Christian",
    "Gepperth, Alexander",
    "Göltenboth, Markus",
    "Grimm, Paul",
    "Herpers, Martine",
    "Jung, Yvonne",
    "Ketterer, Norbert",
    "Khakzar, Karim",
    "Klingert, Frank",
    "Kreiker, Jörg",
    "Kumm, Martin",
    "Milde, Jan-Torsten",
    "Peinl, Peter",
    "Rieger, Sebastian",
    "Scheich, Christoph",
    "Süß, Tim",
    "Todtenhöfer, Rainer",
    "Wagner, Annika",
    "Warschburger, Volker",
    "Weba, Michael",
    "Winzerling, Werner"
  ].toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personen"),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemCount: person.length,
          itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  //buildPerson(context, BomsdorfScreen()); so führt es immer zu Bomsdorf :(
                },
                title: Text('${person[index]}'),
                leading: Icon(Icons.person),
              ),
            ),
          );
          }
      ),
    );
  }

  void buildPerson(BuildContext context, widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}
