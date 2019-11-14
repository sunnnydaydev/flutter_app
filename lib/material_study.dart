import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //布局控件
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation menu",
          onPressed: null,
        ),
        title: Text("Example title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text("hello world"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Add",
         child: Icon(Icons.add),
      ),
    );
  }
}

void main() =>
    runApp(MaterialApp(
      title: "Flutter Tutorial",
      home: TutorialHome(),
    ));
