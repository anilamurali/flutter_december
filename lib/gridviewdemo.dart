import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Grid View Demo"),),
    // body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    // children: List.generate(10, (index){
    //   return Card(
    //     child: Center(
    //       child: Image(image: AssetImage("assets/images/anila.JPG")),
    //     ),
    //   );
    // }),),
    body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 70,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20
      ,childAspectRatio: 1.0),
    children:List.generate(10, (index){
      return const Card(
        child: Center(
          child: Image(image: AssetImage("assets/images/anila.JPG")),
        ),
      );
    }),),
   );
  }

}