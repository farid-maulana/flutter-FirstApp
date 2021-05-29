import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: Text('Hello World!'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Heading(text: "Selamat Datang, "),
            SetupFontSize(text: "Farlan"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('Halo'),
                );
              });
          },
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  Heading({required this.text}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Times New Roman',
      ),
    );
  }
}

class SetupFontSize extends StatefulWidget {
  final String text;

  const SetupFontSize({required this.text});

  @override
  _SetupFontSizeState createState() => _SetupFontSizeState();
}

class _SetupFontSizeState extends State<SetupFontSize> {
  double _textSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 6),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _textSize = _textSize - 2.0;
                  });
                },
                child: Text("Perkecil"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _textSize = _textSize + 2.0;
                  });
                },
                child: Text("Perbesar"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        )
      ],
    );
  }
}
