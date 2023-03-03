import 'package:flutter/material.dart';

class GridViewWithCount extends StatelessWidget{
  var color=<int>[900,800,700,600,500,400,300,200,100,000];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children:List.generate(10, (index) => Card(
        color: Colors.red[color[index]],
        child: Center(child: Text("Hello")),
      ))), 
      );

  }

}