import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi primera aplicacion",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Mi primera aplicacion'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.email),
              onPressed: null),
            IconButton(
              icon: Icon(Icons.mic),
              onPressed: null),
          ],
        ),
        body: Container(
          child: Row(
            children: <Widget>[
              Text('Hola mundo')
            ],
          ),
        ),

          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.print), title: Text('Imprimir')),
            BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('Enviar')),
            BottomNavigationBarItem(icon: Icon(Icons.adjust), title: Text('Ajustar'))
          ],/*THE LINE CODE DOWN SHOW IN CONSOLE THE NUMBER OF THE ELEMENT IN ITEMS: [0,1,2]*/
            onTap: (int i) => debugPrint("Elemento: $i"),),
      ),
    );
  }
}

