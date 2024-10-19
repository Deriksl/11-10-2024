import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My flutter app',
      home: button(),
    );
  }
}

class button extends StatefulWidget{
  const button({super.key});

  @override
  _InicioStateB createState() => _InicioStateB();

}

class _InicioStateB extends State<button> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi app'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.accessibility_new),
                Text('Click me')

              ],
            ),

            onPressed: () {
              print('Hola Mundo');

            }
        ),
      ),
    );

  }
}

class RunColumContainer extends StatefulWidget {
  const RunColumContainer({super.key});



  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<RunColumContainer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.blue,
            child: Text("uno", textAlign: TextAlign.center,),
          ),
          Text("dos"),
          Text("tres"),

        ],
      ),
    );
  }
}


