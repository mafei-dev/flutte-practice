import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.red,
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: BaseHome(
            name: "Mafei",
          ),
        ),
      ),
    );
  }
}

class BaseHome extends StatefulWidget {
  final String name;

  const BaseHome({Key key, this.name}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    print("createState");
    // TODO: implement createState
    return Count();
  }
}

class Count extends State<BaseHome> {
  int countInt = 0;

  countM() {
    setState(() {
      countInt++;
    });
    print(countInt);
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return RaisedButton(
      child: Text("$countInt" + " - " + widget.name+" - "+DateTime.now().toString()),
      onPressed: countM,
    );
  }
}

