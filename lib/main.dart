import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(colorapp());
}

class colorapp extends StatefulWidget {
  const colorapp({super.key});

  @override
  State<colorapp> createState() => _colorappState();
}

class _colorappState extends State<colorapp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List colorlist = [
      Colors.amber,
      Colors.amberAccent,
      Colors.green,
      Colors.yellow
    ];
    return MaterialApp(
      title: "Color Changer",
      home: Scaffold(
        backgroundColor: colorlist[index],
        appBar: AppBar(
          title: Text("Color Changer"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: ElevatedButton(
              onPressed: () => {
                setState(() {
                  index++;
                  if (index == 3) {
                    index = 0;
                  }
                })
              },
              child: Text("Click for color change",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      //  home: homepage(),
    );
  }
}

/*class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List randomcolor = [Colors.green, Colors.red, Colors.yellow, Colors.white];
  int index = 0;

  void colorchange() {
    setState(() {
      index = Random().nextInt(randomcolor.length);
      print(index); //randomcolor[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    //child: Column(children: <Widget>[
    return Container(
        decoration: BoxDecoration(
          color: randomcolor[index],
        ),

        //)
        child: ElevatedButton(
            onPressed: colorchange,
            child: Text("Click for Change",
                style: TextStyle(
                  fontSize: 25,
                  //color: Color.fromARGB(255, 19, 10, 3),
                ))));
  }
}*/
