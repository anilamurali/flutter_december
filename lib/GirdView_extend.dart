import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewExtend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View With Extent"),),
      body: GridView.extent(maxCrossAxisExtent: 70,
      mainAxisSpacing: 10,
      crossAxisSpacing: 20,
      children: [
        Card(
          child: Column(
            children: [
             const Text("Image 1"),
              Image.asset("assets/icons/Dragonfruit-icon.png")
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
             const Text("Image 2"),
              Image.asset("assets/icons/Peach-icon.png")
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
             const Text("Image 2"),
              Image.asset("assets/icons/watermelon.png")
            ],
          ),
        ),
        
      ],),
    );

  }

}