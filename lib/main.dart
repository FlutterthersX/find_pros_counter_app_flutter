import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData(
          accentColor: Colors.amber,
          appBarTheme: AppBarTheme(color: Colors.deepOrange)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increment() {
    if (counter < 99) {
      counter = counter + 1;
    } else {
      counter = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(
        //   Icons.grade,
        //   color: Colors.white70,
        // ),
        title: Text(
          "Counter",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            Text("Settings"),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "$counter",
          style: TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
