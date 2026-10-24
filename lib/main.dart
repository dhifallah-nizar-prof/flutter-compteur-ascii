import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: compteurPage(),
    );
  }
}

class compteurPage extends StatefulWidget {
  const compteurPage({super.key});

  @override
  State<compteurPage> createState() => _compteurPageState();
}

class _compteurPageState extends State<compteurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_outlined),
        title: Text("Code ASCII"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 4, // Crée l'ombre portée de niveau 4 sous l'AppBar
      ),
      body: InteractiveWidget(),
    );
  }
}

class InteractiveWidget extends StatefulWidget {
  InteractiveWidget({super.key});

  @override
  State<InteractiveWidget> createState() => _InteractiveWidgetState();
}

class _InteractiveWidgetState extends State<InteractiveWidget> {
  int _compteur = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: () {
            if (_compteur>0 ) {
              setState(() {
                _compteur--;
              });
            }
          }, child: Icon(Icons.remove, size: 40,color: Colors.blue,)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(" ${String.fromCharCode(_compteur)} $_compteur",
              style: TextStyle(fontSize: 50,
                  color: (_compteur>= 65 && _compteur<= 90)? Colors.red : ((_compteur >= 97 && _compteur <= 122)? Colors.green: Colors.blue),


    ),),
          ),
          FloatingActionButton(onPressed: () {
            setState(() {
              _compteur++;
            });

          }, child: Icon(Icons.add, size: 40,color: Colors.blue,)),
        ],

      ),
    );
  }
}
