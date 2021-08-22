import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme : ThemeData(
      accentColor: Colors.orange,
      brightness: Brightness.light,
      primaryColor: Colors.blue 
      ),
      home: MyApp()
  ));

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List todos = List();

  // List<_MyAppState> todos = [];
  List todos = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todos.add("Item1");
    todos.add("Item2");
    todos.add("Item3");

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("My APP"),
         ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index)  {
        return Dismissible(
          key: Key(todos[index]),
          child: Card(
            child: ListTile(
                title: Text(todos[index]),) ,
        ));
        
        }),
    );
  }
}