import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(home: FirstAppHomePage()));
  }
}

class FirstAppHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return (FirstAppHomePageState());
  }
}

class FirstAppHomePageState extends State<FirstAppHomePage> {
  int bienDem = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: Text('Ung dung Flutter dau tien cua toi'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('So lan ban da nhan vao nut:'),
          Text('so lan: $bienDem')],
      )),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.plus_one),
              onPressed: () {
              bienDem++;
              setState(() {

              });
              }),
    ));
  }
}
