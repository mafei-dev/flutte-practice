import 'dart:math';

import 'package:counter/Todo.dart';
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
        body: MyHomePage(
          title: "hi",
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> _todos = [
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 1",
    ),
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 2",
    ),
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 3",
    ),
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 4",
    ),
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 5",
    ),
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 4",
    ),
    Todo(
      id: 1,
      date: DateTime.now(),
      isComplete: true,
      title: "my todo - 6",
    ),
  ];
  var random = new Random(new DateTime.now().millisecondsSinceEpoch);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Column(
              children: _todos.map(
                (todo) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(todo.id.toString()),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 50,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                        ),
                        Column(
                          children: <Widget>[
                            Text(todo.title),
                            Text(todo.date.toString()),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    color: Color.fromRGBO(random.nextInt(255),
                        random.nextInt(255), random.nextInt(255), 1),
                  );
                },
              ).toList(),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
