import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String typeofnumber = "GENAP";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      setbilangan();
    });
  }
  void _decrementCounter() {
    setState((){
      if (_counter != 0 ) _counter--;
      setbilangan();
    });
  }

  void setbilangan(){
    if(_counter % 2 == 0){
      typeofnumber = "GENAP";
    }
    else {
      typeofnumber = "GANJIL";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const DrawerPage(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                '$typeofnumber',
                style: TextStyle(color: typeofnumber == "GENAP"? Colors.blue : Colors.red)
            ),
            Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Visibility(
                visible: _counter != 0 ? true : false,
                child: FloatingActionButton(
                onPressed: _decrementCounter,
                //tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              ),
              FloatingActionButton(
                  onPressed: _incrementCounter,
                  //tooltip: 'Increment',
                  child: const Icon(Icons.add),
                )
      ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
