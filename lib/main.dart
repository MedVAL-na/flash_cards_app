import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
            headline2: TextStyle(
          fontSize: 40,
        )),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flashcards"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(70.0),
                decoration:
                    BoxDecoration(color: Colors.cyan, shape: BoxShape.circle),
                child: Text(
                  "Dictionary",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(60.0),
                    decoration: BoxDecoration(
                        color: Colors.cyan, shape: BoxShape.circle),
                    child: Text(
                      "Train",
                      style: Theme.of(context).textTheme.headline2,
                    )),
                Container(
                    padding: EdgeInsets.all(60.0),
                    decoration: BoxDecoration(
                        color: Colors.cyan, shape: BoxShape.circle),
                    child: Text(
                      "Add",
                      style: Theme.of(context).textTheme.headline2,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
