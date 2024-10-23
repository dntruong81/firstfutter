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
  String gtNhapVao = '';

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
            children: [
              SizedBox( width: 200,
                child: TextField(
                    onChanged: (text){
                      gtNhapVao = text;
                      },
                    decoration: InputDecoration(border: OutlineInputBorder())),),
              SizedBox(height: 10),
              Text('Chuoc Ban da nhap vao la: $gtNhapVao')
            ],
          )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {
          setState(() {});
          }),
    ));
  }
}
